 %{
%}

%%
[0-9]*|[0-9]*+"."[0-9]* {printf("valid input is a digit");}
.+ {printf("invalid input is not digit");}
%%

int yywrap(void) {}
int main(void)
{
printf("Enter the input:");
yylex();
return 0;
}
