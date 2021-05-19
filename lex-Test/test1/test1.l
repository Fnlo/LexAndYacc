%{
 /**
 这是一个简单的Lex实例

 **/
 #include <stdlib.h>
%}

%%
[ \n \t ];
- ? [ 0-9 ] + {printf("num = %d \n",atoi(yytext));}
. ECHO
%%

main(){
yylex();
}

