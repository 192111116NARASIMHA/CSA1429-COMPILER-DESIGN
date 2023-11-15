%{
int pcount=0;
int ncount=0;
%}
%%
[0-9]+ {pcount++;}
[-][0-9]+ {ncount++;}
%%
int yywrap(void){}
int main()
{
printf("enter the numbers\n");
yylex();
printf("positives are=%d \n"
          "negatives are=%d\n",
               pcount,ncount);
return 0;
}
