%{
 /**
 这是一个简单的Lex实例

 **/
 //#include <stdlib.h>
 int wordCount = 0;
 int numberSum = 0;
%}
chars [A-Za-z\_\'\.\"]
numbers ([0-9])+
delim [" "\n\t]
whitespace {delim}+
words {chars}+

%%
{words} {wordCount++; /*increase the word count by one*/}
{whitespace} {/*do nothing*/}
{numbers} { numberSum += atoi( yytext); }



%%

main(){
yylex();
printf("No of words : %d\n, sum of number: %d \n" , wordCount, numberSum);
}
int yywrap(){
return 1;
}

