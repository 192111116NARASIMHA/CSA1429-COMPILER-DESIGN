 %{
%}

%%
[0-9]*|[0-9]+"."[0-9]*  {printf("valid input");}
.+ {printf("invalid");}
%%

int yywrap(void) {}
int main(void)
{
printf("Enter the input:");
yylex();
return 0;
}
