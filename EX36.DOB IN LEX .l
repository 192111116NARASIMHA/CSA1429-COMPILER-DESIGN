%{
#include <stdio.h>
%}

DIGIT [0-9]
DAY ([0-2][0-9]|3[0-1])
MONTH (0[1-9]|1[0-2])
YEAR (19|20)[0-9]{2}

%%
{DAY}\/{MONTH}\/{YEAR} {printf("Valid Date of Birth: %s\n", yytext);}
{DAY}\/{MONTH}\/{DIGIT} {printf("Invalid Date of Birth: %s\n", yytext);}
.+ {printf("Invalid Format: %s\n", yytext);}
%%
int yywrap(void) {}
int main() {
    yylex();
    return 0;
}
