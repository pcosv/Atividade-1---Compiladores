%%

/* N�o altere as configura��es a seguir */

%line
%column
%unicode
//%debug
%public
%standalone
%class Minijava
//%class ScannerJF
//%implements Scanner
%eofclose
//%function Token 
//%type Token

%%

/* Insira as regras l�xicas abaixo */

[\n\r\t\f]+ {}

    
/* Insira as regras l�xicas no espa�o acima */     
     
. { throw new RuntimeException("Caractere ilegal! '" + yytext() + "' na linha: " + yyline + ", coluna: " + yycolumn); }
