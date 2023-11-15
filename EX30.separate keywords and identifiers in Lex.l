%{
#include <stdio.h>
%}
%%
int|float|char   { printf("Keyword: %s\n", yytext); }
[A-Za-z][A-Za-z0-9_]*   { printf("Identifier: %s\n", yytext); }
.|\n            { /* Ignore other characters */ }
%%
int yywrap() {
    return 1;
}
int main(void) {
    yylex();
    return 0;
}
