%{
  #include <stdio.h>
  #include <stdlib.h>
  int yylex(void);
  int yyerror(const char *s);
%}

%token HW

%%

program:
    hw
    ;

hw:
	HW	{printf("Hello World\n");}
    ;
