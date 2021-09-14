%{

  #include <stdio.h>
  #include <stdlib.h>
  int yylex(void);
  int yyerror(const char *s);

%}

%token HI

%%

program:
    hi
    ;

hi:
    HI     { printf("Hello World\n");   }
    ;
