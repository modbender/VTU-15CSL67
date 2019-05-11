%{
    int v=0;
%}
%%
a+ {v+=yyleng;}
e+ {v+=yyleng;}
i+ {v+=yyleng;}
o+ {v+=yyleng;}
u+ {v+=yyleng;}
%%
int yywrap(){
    return 1;
}
int main(){
    yylex();
    printf("Vowel count = %d\n\n",v);
    return 1;
}
