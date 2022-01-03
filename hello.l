%{
  #include "y.tab.h"
  int yyerror(char *errormsg);
  int yyparse();
%}

%option noyywrap

%%

("hw")"\n"	{ return HW;  }
[-[]+.,><]  { return yytext[0]; }
.           { yyerror("Unknow char");  }

%%

int main(void)
{
    yyparse();
    return 0;
}

int yyerror(char *errormsg)
{
    fprintf(stderr, "%s\n", errormsg);
    exit(1);
}
