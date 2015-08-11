%{
#include <stdio.h>
#define PRINT 256
#define INT 257
int linha=0, contador=0;
%}
%%
[0-9]+ { return INT;}
"+" { return '+';}
"-" { return '-';}
"*" { return '*';}
"/" { return '/';}
"(" { return '(';}
")" { return ')';}
"=" { return '=';}
"PRINT" {return PRINT;}
"\n" {return '\n';}
. { return (-1); }
%%


int main (int argc, char** argv){
    int token;
    do{
        token=yylex();
        if (token == -1)
            printf("\nErro lexico");
        else 
            printf("\nAchou token %d.", token);
    }while(token!=0);
    
    return(0);
}
