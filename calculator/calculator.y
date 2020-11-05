%{  
  #include<stdio.h> 
  int flag=0; 
  int yylex();
  void yyerror();
%} 
  
%token NUMBER 
  
%left '+' '-'
  
%left '*' '/' '%'
  
%left '(' ')'
  
%% 
  
ArithmeticExpression: E{ 
  		printf("Answer=%d\n", $$); 
  		return 0; 
  		}; 

 	E:E'+'E {$$=$1+$3;} 
  
 	|E'-'E {$$=$1-$3;} 
  
 	|E'*'E {$$=$1*$3;} 
  
 	|E'/'E {$$=$1/$3;} 
  
 	|E'%'E {$$=$1%$3;} 
  
 	|'('E')' {$$=$2;} 
  
 	| NUMBER {$$=$1;} ; 
  
%% 
  
void main() 
{ 
   	printf("\nEnter Your Arithmetic Expression: "); 
  
   	yyparse(); 
   	if(flag==0) 
   		printf("Arithmetic expression is Valid\n"); 
} 
  
void yyerror() 
{ 
   	printf("Arithmetic expression is Invalid\n"); 
   	flag=1; 
}