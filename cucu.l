%{
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "cucu.tab.h"
void yyerror (char *s);
%}

%%
\/\*(.|\n)*\*\/                 { fprintf(yyout,"COMMENT\n");} //HANDLES MULTILINE COMMENTS AS WELL
int                             { fprintf(yyout,"TYPE : %s\n",yytext); return TYPE;}
char[ ]\*                       { fprintf(yyout,"TYPE : %s\n",yytext); return TYPE;}
if                              { fprintf(yyout,"CONTROL_STMT: %s\n",yytext); return IF;}
else                            { fprintf(yyout,"CONTROL_STMT: %s\n",yytext); return ELSE;}
while                           { fprintf(yyout,"CONTROL_STMT: %s\n",yytext); return WHILE;}
return                          { fprintf(yyout,"RETURN\n"); return RETURN;}
[0-9]+                          { fprintf(yyout,"NUM : %s\n",yytext);yylval.number=atoi(yytext); return NUM;}
[a-zA-Z][a-zA-Z0-9_]*           { fprintf(yyout,"ID : %s\n",yytext); yylval.string=strdup(yytext); return ID;}
\"[a-zA-Z0-9 ]*\"               { fprintf(yyout,"STRING : "); for( int i=1;i<yyleng-1;i++){fprintf(yyout,"%c",yytext[i]);} fprintf(yyout,"\n"); yylval.string=strdup(yytext); return STRING;}
\(                              { fprintf(yyout,"L_PAR\n"); return L_PAR;}
\)                              { fprintf(yyout,"R_PAR\n"); return R_PAR;}
\{                              { fprintf(yyout,"L_BRACE\n"); return L_BRACE;}
\}                              { fprintf(yyout,"R_BRACE\n"); return R_BRACE;}
\[                              { fprintf(yyout,"L_SQB\n"); return L_SQB;}
\]                              { fprintf(yyout,"R_SQB\n"); return R_SQB;}
\+                              { fprintf(yyout,"PLUS: %s\n",yytext); return PLUS;}
[-]                               { fprintf(yyout,"MINUS: %s\n",yytext); return MINUS;}
\*                              { fprintf(yyout,"MUL: %s\n",yytext); return MUL;}
\/                              { fprintf(yyout,"DIV: %s\n",yytext); return DIV;}
[&][&]                            { fprintf(yyout,"AND: %s\n",yytext); return AND;}
\|\|                            { fprintf(yyout,"OR: %s\n",yytext); return OR;}
[=][=]                            { fprintf(yyout,"EQUAL_TO : %s\n",yytext); return EQUAL_TO;}
[=]                              { fprintf(yyout,"ASSIGN : %s\n",yytext); return ASSIGN;}
[!][=]                            { fprintf(yyout,"NOT_EQUAL : %s\n",yytext); return NOT_EQUAL;}
[<][=]                            { fprintf(yyout,"LESS_THAN_EQ : %s\n",yytext); return LESS_THAN_EQ;}
[<]                               { fprintf(yyout,"LESS_THAN : %s\n",yytext); return LESS_THAN;}
[>][=]                            { fprintf(yyout,"GREATER_THAN_EQ : %s\n",yytext); return GREATER_THAN_EQ;}
[>]                               { fprintf(yyout,"GREATER_THAN : %s\n",yytext); return GREATER_THAN;}
[,]                               { fprintf(yyout,"COMMA\n"); return COMMA;}
[;]                               { fprintf(yyout,"SEMI : %s\n",yytext); return SEMI;}

[ |\t]                          /*Tabs and Spaces*/

%%


int yywrap(){
    return 1;
}
