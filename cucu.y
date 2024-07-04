// parser.y

%{
    #include <stdio.h>
    #include <stdlib.h>
    FILE* parser_op;

    int yyerror(const char *s) {
        fprintf(parser_op, "ERROR %s\n", s);
        return 0;
    }

    int yylex();    
    extern FILE *yyout, *yyin;
%}

%token TYPE IF ELSE WHILE RETURN L_PAR R_PAR L_BRACE R_BRACE L_SQB R_SQB PLUS MINUS MUL DIV AND OR EQUAL_TO ASSIGN NOT_EQUAL GREATER_THAN_EQ LESS_THAN_EQ GREATER_THAN LESS_THAN COMMA SEMI;

%union {
    int number;
    char *string;
}

%left DIV MUL 
%left PLUS MINUS
%left L_PAR R_PAR

%token<number> NUM
%token<string> ID STRING

%%

PROG: PROG_STMTS { fprintf(parser_op, "Program Ended\n"); return 0; };

PROG_STMTS: STMT { fprintf(parser_op, "Statement\n"); } | PROG_STMTS STMT;

STMT: VAR_STMT | FUNC_STMTS | FUNC_CALL | IF_STMT | WHILE_STMT | EXPR SEMI | RETURN_EXPR;

VAR_STMT: VAR_DECL | VAR_ASSIGN;

VAR_DECL: TYPE ID SEMI { fprintf(parser_op, "Variable Declaration\n"); };

VAR_ASSIGN: TYPE ID ASSIGN EXPR SEMI { fprintf(parser_op, "Variable Assignment\n"); } 
          | TYPE ID ASSIGN FUNC_CALL SEMI { fprintf(parser_op, "Function Assignment\n"); }; 

FUNC_STMTS: FUNC_DECL | FUNC_DEF;

FUNC_DECL: TYPE ID L_PAR FORMAL_PARAM R_PAR SEMI { fprintf(parser_op, "Function Declaration\n"); };

FUNC_DEF: TYPE ID L_PAR FORMAL_PARAM R_PAR FUNC_BODY { fprintf(parser_op, "Function Definition\n"); };

FUNC_CALL: ID L_PAR ACTUAL_PARAM R_PAR SEMI { fprintf(parser_op, "Function Call\n"); }
         | ID L_PAR R_PAR SEMI { fprintf(parser_op, "Function Call\n"); };

FUNC_BODY: L_BRACE PROG_STMTS R_BRACE;

FORMAL_PARAM: FORMAL_PARAM COMMA TYPE ID { fprintf(parser_op, "Formal Parameter\n"); }
             | TYPE ID { fprintf(parser_op, "Formal Parameter\n"); };

ACTUAL_PARAM: EXPR { fprintf(parser_op, "Actual Parameter\n"); }
             | EXPR COMMA ACTUAL_PARAM { fprintf(parser_op, "Actual Parameter\n"); }
             | EXPR ASSIGN EXPR { fprintf(parser_op, "Actual Parameter\n"); };

EXPR: ID { fprintf(parser_op, "Variable: %s\n", $1); }
    | STRING  { fprintf(parser_op, "String: %s\n", $1); } 
    | NUM { fprintf(parser_op, "Constant: %d\n", $1); }
    | EXPR PLUS EXPR { fprintf(parser_op, "+\n"); }
    | EXPR MINUS EXPR { fprintf(parser_op, "-\n"); }
    | EXPR MUL EXPR { fprintf(parser_op, "*\n"); }
    | EXPR DIV EXPR { fprintf(parser_op, "/\n"); }
    | EXPR COMPARISON EXPR /////////
    | L_PAR EXPR R_PAR;

COMPARISON: EQUAL_TO | NOT_EQUAL | GREATER_THAN |GREATER_THAN_EQ | LESS_THAN |LESS_THAN_EQ | ASSIGN 
IF_STMT : IF L_PAR EXPR R_PAR L_BRACE FUNC_BODY R_BRACE { fprintf(parser_op, "Identifier-if\n"); }
        | IF L_PAR EXPR R_PAR L_BRACE FUNC_BODY R_BRACE ELSE L_BRACE FUNC_BODY R_BRACE { fprintf(parser_op, "Identifier-if Identifier-else\n"); };

WHILE_STMT : WHILE L_PAR EXPR R_PAR L_BRACE FUNC_BODY R_BRACE { fprintf(parser_op, "Identifier-While\n"); };

RETURN_EXPR : RETURN EXPR SEMI 

%%

int main(int argc, char* argv[]) {
    if (argc == 1) {
        printf("No file is given.\n");
        return 0;
    }
    yyin = fopen(argv[1], "r");
    yyout = fopen("Lexer.txt", "w");
    parser_op = fopen("Parser.txt", "w");
    yyparse();

    return 0;
}
