%%

/* N�o altere as configura��es a seguir */

%line
%column
%unicode
%public
%standalone
%class Minijava
%eofclose


integer = 0|[1-9][0-9]*
whitespace = [ |\n|\r|\t|\f]
identifier = [_|a-z|A-Z][a-z|A-Z|0-9|_]*
commentLine = [/][/][^\n]*[\n]?
multiLineComment = "/*"~"*/"
andOperator = ["&&"]
lessThanOperator = ["<"]
assignmentOperator = ["="]
negationOperator = ["!"]
sumOperator = ["+"]
subOperator = ["-"]
multOperator = ["*"]
comparisonOperators = {assignmentOperator}{assignmentOperator}|{negationOperator}{assignmentOperator}
pontuation = [;|.|,|(|)|{|}|"["|"]"]

%%

/* Insira as regras l�xicas abaixo */

"boolean" {System.out.println("Token BOOLEAN");}
"class" {System.out.println("Token CLASS");}
"public" {System.out.println("Token PUBLIC");}
"extends" {System.out.println("Token EXTENDS");}
"static" {System.out.println("Token STATIC");}
"void" {System.out.println("Token VOID");}
"main" {System.out.println("Token MAIN");}
"String" {System.out.println("Token STRING");}
"int" {System.out.println("Token INT");}
"while" {System.out.println("Token WHILE");}
"if" {System.out.println("Token IF");}
"else" {System.out.println("Token ELSE");}
"return" {System.out.println("Token RETURN");}
"length" {System.out.println("Token LENGTH");}
"true" {System.out.println("Token TRUE");}
"false" {System.out.println("Token FALSE");}
"this" {System.out.println("Token THIS");}
"new" {System.out.println("Token NEW");}
"System.out.println" {System.out.println("Token SYSTEMOUTPRINTLN");}
    
/* Insira as regras l�xicas no espa�o acima */     

{integer} {System.out.println("Token INTEIRO ("+yytext()+")");}
{whitespace} { }
{identifier} {System.out.println("Token IDENTIFICADOR ("+yytext()+")");}
{commentLine} {System.out.println("Token COMENTARIO DE UMA LINHA");}
{multiLineComment}	{System.out.println("Token COMENTARIO DE MULTIPLAS LINHAS");}
{andOperator} {System.out.println("Token OPERA�AO AND ("+yytext()+")");}
{lessThanOperator} {System.out.println("Token MENOR QUE (<)");}
{assignmentOperator} {System.out.println("Token ATRIBUI�AO ("+yytext()+")");}
{negationOperator} {System.out.println("Token NEGA�AO ("+yytext()+")");}
{sumOperator} { System.out.println("Token SOMA ("+yytext()+")");}
{subOperator} { System.out.println("Token SUBTRA�AO ("+yytext()+")");}
{multOperator} { System.out.println("Token MULTIPLICA�AO ("+yytext()+")");}
{comparisonOperators} {System.out.println("Token COMPARA�AO ("+yytext()+")");}
{pontuation} {System.out.println("Token PONTUA�AO ("+yytext()+")");}

. { throw new RuntimeException("Caractere ilegal! '" + yytext() + "' na linha: " + yyline + ", coluna: " + yycolumn); }
