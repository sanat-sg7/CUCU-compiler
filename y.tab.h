/* A Bison parser, made by GNU Bison 3.8.2.  */

/* Bison interface for Yacc-like parsers in C

   Copyright (C) 1984, 1989-1990, 2000-2015, 2018-2021 Free Software Foundation,
   Inc.

   This program is free software: you can redistribute it and/or modify
   it under the terms of the GNU General Public License as published by
   the Free Software Foundation, either version 3 of the License, or
   (at your option) any later version.

   This program is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
   GNU General Public License for more details.

   You should have received a copy of the GNU General Public License
   along with this program.  If not, see <https://www.gnu.org/licenses/>.  */

/* As a special exception, you may create a larger work that contains
   part or all of the Bison parser skeleton and distribute that work
   under terms of your choice, so long as that work isn't itself a
   parser generator using the skeleton or a modified version thereof
   as a parser skeleton.  Alternatively, if you modify or redistribute
   the parser skeleton itself, you may (at your option) remove this
   special exception, which will cause the skeleton and the resulting
   Bison output files to be licensed under the GNU General Public
   License without this special exception.

   This special exception was added by the Free Software Foundation in
   version 2.2 of Bison.  */

/* DO NOT RELY ON FEATURES THAT ARE NOT DOCUMENTED in the manual,
   especially those whose name start with YY_ or yy_.  They are
   private implementation details that can be changed or removed.  */

#ifndef YY_YY_Y_TAB_H_INCLUDED
# define YY_YY_Y_TAB_H_INCLUDED
/* Debug traces.  */
#ifndef YYDEBUG
# define YYDEBUG 0
#endif
#if YYDEBUG
extern int yydebug;
#endif

/* Token kinds.  */
#ifndef YYTOKENTYPE
# define YYTOKENTYPE
  enum yytokentype
  {
    YYEMPTY = -2,
    YYEOF = 0,                     /* "end of file"  */
    YYerror = 256,                 /* error  */
    YYUNDEF = 257,                 /* "invalid token"  */
    TYPE = 258,                    /* TYPE  */
    IF = 259,                      /* IF  */
    ELSE = 260,                    /* ELSE  */
    WHILE = 261,                   /* WHILE  */
    RETURN = 262,                  /* RETURN  */
    L_PAR = 263,                   /* L_PAR  */
    R_PAR = 264,                   /* R_PAR  */
    L_BRACE = 265,                 /* L_BRACE  */
    R_BRACE = 266,                 /* R_BRACE  */
    L_SQB = 267,                   /* L_SQB  */
    R_SQB = 268,                   /* R_SQB  */
    PLUS = 269,                    /* PLUS  */
    MINUS = 270,                   /* MINUS  */
    MUL = 271,                     /* MUL  */
    DIV = 272,                     /* DIV  */
    AND = 273,                     /* AND  */
    OR = 274,                      /* OR  */
    EQUAL_TO = 275,                /* EQUAL_TO  */
    ASSIGN = 276,                  /* ASSIGN  */
    NOT_EQUAL = 277,               /* NOT_EQUAL  */
    GREATER_THAN_EQ = 278,         /* GREATER_THAN_EQ  */
    LESS_THAN_EQ = 279,            /* LESS_THAN_EQ  */
    GREATER_THAN = 280,            /* GREATER_THAN  */
    LESS_THAN = 281,               /* LESS_THAN  */
    COMMA = 282,                   /* COMMA  */
    SEMI = 283,                    /* SEMI  */
    NUM = 284,                     /* NUM  */
    ID = 285,                      /* ID  */
    STRING = 286                   /* STRING  */
  };
  typedef enum yytokentype yytoken_kind_t;
#endif
/* Token kinds.  */
#define YYEMPTY -2
#define YYEOF 0
#define YYerror 256
#define YYUNDEF 257
#define TYPE 258
#define IF 259
#define ELSE 260
#define WHILE 261
#define RETURN 262
#define L_PAR 263
#define R_PAR 264
#define L_BRACE 265
#define R_BRACE 266
#define L_SQB 267
#define R_SQB 268
#define PLUS 269
#define MINUS 270
#define MUL 271
#define DIV 272
#define AND 273
#define OR 274
#define EQUAL_TO 275
#define ASSIGN 276
#define NOT_EQUAL 277
#define GREATER_THAN_EQ 278
#define LESS_THAN_EQ 279
#define GREATER_THAN 280
#define LESS_THAN 281
#define COMMA 282
#define SEMI 283
#define NUM 284
#define ID 285
#define STRING 286

/* Value type.  */
#if ! defined YYSTYPE && ! defined YYSTYPE_IS_DECLARED
union YYSTYPE
{
#line 12 "cucu.y"

    int number;
    char *string;

#line 134 "y.tab.h"

};
typedef union YYSTYPE YYSTYPE;
# define YYSTYPE_IS_TRIVIAL 1
# define YYSTYPE_IS_DECLARED 1
#endif


extern YYSTYPE yylval;


int yyparse (void);


#endif /* !YY_YY_Y_TAB_H_INCLUDED  */
