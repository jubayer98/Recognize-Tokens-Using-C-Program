#include <stdio.h>
#include <string.h>

char refStr[33][255] = {"(",")","{","}","[","]",".",";","+","-","*","/","%",":=","++","--","_","\\","\'","\"",
                        "if","else","for","return","int","real","char","void","\\n","\\t","\\r","\\\\"};

char nameStr[33][255] = {"LPT","RPT","LCB","RCB","LSB","RSB","DOT","SEMI","PLUS","MINUS","PROD","DIV","REM",
                        "ASSIGN","INC","DEC","UNDERSCORE","BACKSL","SINGLEQ","DOUBLEQ",
                        "IF","ELSE","FOR","RETURN","INT","REAL","CHAR","VOID","NL","TAB","CR","BKSL"};


int checkIdentfier(char str[])
{
    int flag=1, flag2=0, i;

    for(i=0; str[i]!='\0'; i++)
    {
        if(((int)str[i]>=48 && (int)str[i]<=57 && i!=0) || ((int)str[i]>=65 && (int)str[i]<=90) || ((int)str[i]>=97 && (int)str[i]<=122))
        {
            continue;
        }
        else
        {
            flag = 0;
        }
    }
}
    

int checkLiteral(char str[])
{

    int i, flag=1, flag2=0, flag3, chkComVal;
    for(i=0;str[i]!='\0';i++)
    {
        if(((int)str[i]>=48 && (int)str[i]<=57) || str[i]=='.');
        {
            if(str[i]=='.') 
                flag2++;
                continue;
        }
        else
        {
            flag = 0;
        }
    }
}
