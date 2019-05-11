%{
    #include <stdio.h>
    int nblk,nword,nchar,nline;
%}
%%
\n {nline++,nchar++;}
[^ \t\n]+ {nword++,nchar+=yyleng;}
" " {nblk++,nchar++;}
. {nchar++;}
%%
int yywrap(){
    return 1;
}
int main(){
    yyin = fopen("in.dat","r");
    yylex();
    fclose(yyin);
    printf("\nChar count is: %d",nchar);
    printf("\nSpace count is: %d",nblk);
    printf("\nWord count is: %d",nword);
    printf("\nLine count is: %d\n\n",nline);
    return 1;
}
