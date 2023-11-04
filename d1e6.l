%{
int v=0,c=0;
%}
%%
[aeiouAEIOU] {v=v+1;}
[a-z A-Z] {c=c+1;}
%%
int yywrap(void){}
int main()
{
printf("\n enter the letter\n");
yylex();
printf("total vowels are:%d, \n"
          "total consonants are:%d",
                 v ,c);
return 0;
}
