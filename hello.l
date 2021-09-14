%{
     
  #include "y.tab.h"
  int yyerror(char *errormsg);
  int yyparse();

%}

%%

("hi")"\n"       { return HI;  }
[-[]+.,><]            { return yytext[0]; }
.                     { yyerror("Unknow char");  }

%%

int main(void)
{
     yyparse();
     return 0;
}

int yywrap(void)
{
     return 0;
}

int yyerror(char *errormsg)
{
      fprintf(stderr, "%s\n", errormsg);
      exit(1);
}
