%{

#include <stdio.h>
#include <stdlib.h>

%}

/* using backslash is not necessary in all cases */
/* i.e. '\.' is necessary but '\(' is not necessary */
/* here we are going use it for a uniform look for all regular expression */	

%%

if 			printf("IF ");		//SL 6
else 		printf("ELSE ");	//SL 6
for 		printf("FOR ");		//SL 6
return 		printf("RETURN ");	//SL 6
int 		printf("INT ");		//SL 6
real 		printf("REAL ");	//SL 6
char 		printf("CHAR ");	//SL 6
void 		printf("VOID ");	//SL 6

\(			printf("LPT ");		//SL 3
\)			printf("RPT ");		//SL 3
\{			printf("LCB ");		//SL 3
\}			printf("RCB ");		//SL 3
\[			printf("LSB ");		//SL 3
\]			printf("RSB ");		//SL 3
\.			printf("DOT ");		//SL 3
\;			printf("SEMI ");	//SL 3

\+			printf("PLUS ");	//SL 4
\-			printf("MINUS ");	//SL 4
\*			printf("PROD ");	//SL 4
\/			printf("DIV ");		//SL 4
\%			printf("REM ");		//SL 4
\:=			printf("ASSIGN ");	//SL 4
\+{2}		printf("INC ");		//SL 4
\-{2}		printf("DEC ");		//SL 4

\\			printf("BACKSL ");	//SL 5
\'			printf("SINGLEQ ");	//SL 5
\"			printf("DOUBLEQ ");	//SL 5

\\n 		printf("NL ");		//SL 7
\\t			printf("TAB ");		//SL 7
\\r			printf("CR ");		//SL 7
\\\\		printf("BKSL ");	//SL 7

[a-zA-Z][a-zA-Z0-9]* 	printf("ID "); 		//SL 1

[0-9]+					printf("ILIT "); 	//SL 2
[0-9]+.[0-9]+			printf("RLIT "); 	//SL 2
'[a-zA-Z]'				printf("CLIT "); 	//SL 2
0x([A-Fa-f]|[0-9])+		printf("HLIT "); 	//SL 2
\"[a-zA-Z]+\"			printf("SLIT ");	//SL 2


.|[0-9]+..*|[0-9][a-zA-Z0-9]*		printf("ERROR "); //print ERROR

[ \t]+			/* ignore whitespace */;

%%