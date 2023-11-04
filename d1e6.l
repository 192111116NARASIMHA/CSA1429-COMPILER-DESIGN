%{
%}

%%
[6-9][0-9]{9} {printf("\n MOBILE NUMBER VALID\n");}
.+ {printf("\n mobile number invalid \n");}
%%

int yywrap(void) {}

int main()
{
	printf("\n Mobile Number :");
	yylex();
}
