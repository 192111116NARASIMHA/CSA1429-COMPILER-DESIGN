%{
int i=0,lc=0,c=0;
%}
%%
[\n] {lc++;}
[\t ' '] {i++;}
[a-zA-Z0-9] {c++;}
%%
int yywrap(){}
int  main()
{
printf("enter the string:\n");
yylex();
printf("no of lines:%d \n"
	"no of words is:%d\n "
	"no of characters:%d\n",lc+1 ,i+3,c);
}
