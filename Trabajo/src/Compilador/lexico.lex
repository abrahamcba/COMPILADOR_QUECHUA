package Compilador;
import java_cup.runtime.Symbol;

%%

%cup
%public
%full
%line
%char
%ignorecase
%eofval{
	return new Symbol(sym.EOF,new String("... Lineas Principales...."));
%eofval}

digito = [0-9]
letra = [a-zA-Z]*
espacio = \t|\f|" "|\r|\n

%%
"#"			{return new Symbol(sym.CAB, yychar, yyline, yytext());}
"'"	     	{return new Symbol(sym.COMIS, yychar, yyline, yytext());}
"."	     	{return new Symbol(sym.PUNTO, yychar, yyline, yytext());}
"="			{return new Symbol(sym.IGUAL, yychar, yyline, yytext());}
"<>"		{return new Symbol(sym.DIFERENTE, yychar, yyline, yytext());}
">="		{return new Symbol(sym.MAYORIGUAL, yychar, yyline, yytext());}
"<="		{return new Symbol(sym.MENORIGUAL, yychar, yyline, yytext());}
">"			{return new Symbol(sym.MAYOR, yychar, yyline, yytext());}
"<"			{return new Symbol(sym.MENOR, yychar, yyline, yytext());}
"("			{return new Symbol(sym.PARENTI, yychar, yyline, yytext());}
")"			{return new Symbol(sym.PARENTD, yychar, yyline, yytext());}
"{"			{return new Symbol(sym.LLAVEI, yychar, yyline, yytext());}
"}"			{return new Symbol(sym.LLAVED, yychar, yyline, yytext());}
"+"			{return new Symbol(sym.MAS, yychar, yyline, yytext());}
"-"			{return new Symbol(sym.MENOS, yychar, yyline, yytext());}
"*"			{return new Symbol(sym.MULTI, yychar, yyline, yytext());}
"/"			{return new Symbol(sym.ENTRE, yychar, yyline, yytext());}
"-="		{return new Symbol(sym.MENOSNUM, yychar, yyline, yytext());}
"--"		{return new Symbol(sym.MENOSUNO, yychar, yyline, yytext());}
"+="		{return new Symbol(sym.MASNUM, yychar, yyline, yytext());}
"++"		{return new Symbol(sym.MASUNO, yychar, yyline, yytext());}
";"			{return new Symbol(sym.PYCOMA, yychar, yyline, yytext());}
","         {return new Symbol(sym.COMA, yychar, yyline, yytext());}
"entero"	{return new Symbol(sym.ENTERO, yychar, yyline, yytext());}
"cadena"	{return new Symbol(sym.CADENA, yychar, yyline, yytext());}
"real"  	{return new Symbol(sym.REAL, yychar, yyline, yytext());}
"incluir"	{return new Symbol(sym.INCLUIR, yychar, yyline, yytext());}
"iostream"	{return new Symbol(sym.IOSTREAM, yychar, yyline, yytext());}
"stdio"		{return new Symbol(sym.STDIO, yychar, yyline, yytext());}
"h"			{return new Symbol(sym.H, yychar, yyline, yytext());}
"main"		{return new Symbol(sym.MAIN, yychar, yyline, yytext());}
"void"		{return new Symbol(sym.VOID, yychar, yyline, yytext());}
"Qillqay"	{return new Symbol(sym.QILLQAY, yychar, yyline, yytext());}
"paq"      {return new Symbol(sym.PAQ, yychar, yyline, yytext());}
"ari"        {return new Symbol(sym.ARI, yychar, yyline, yytext());}
"sino"		{return new Symbol(sym.SINO, yychar, yyline, yytext());}
"Hinaqa"	{return new Symbol(sym.HINAQA, yychar, yyline, yytext());}
"kama"	{return new Symbol(sym.KAMA, yychar, yyline, yytext());}
"hacer"     {return new Symbol(sym.HACER, yychar, yyline, yytext());}
{letra}		{return new Symbol(sym.LETRA, yychar, yyline, yytext());}
{digito}+	{return new Symbol(sym.NUMERO, yychar, yyline, new Integer(yytext()));}
{espacio}	{}
.			{ System.out.println("Caracter ilegal: " + yytext()); }