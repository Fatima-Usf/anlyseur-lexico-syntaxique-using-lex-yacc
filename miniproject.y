%{
extern void yyerror(char *);
#include <stdio.h>
#include <stdlib.h>
%}
%token PROGRAMME DEBUT FIN CONST Egale VAR AFFECTATION ENT BOOL
%token LETTRE CHIFRRE  
%token SI ALORS SINON FSI PointVirgule Plus VRAI FAUX DeuxPoint Virugule
%left Plus
%%
S: PROGRAMME Ident PointVirgule D DEBUT Inst FIN {printf("  \n -------------------------------------------------------------- \n Votre programme est correcte lexicalement et syntaxiquement ! \n\n -------------------------------------------------------------- \n"); return(0);}
 ;
D: C V
 ;
C: CONST Dec
 |
 ;
Dec: Ident Egale Num PointVirgule Dec
   | Ident Egale Num
   ;
V: VAR Dev
 |
 ;
Dev: Ident M DeuxPoint Type PointVirgule Dev
   | Ident M DeuxPoint Type
   ;
Type: ENT
    | BOOL
    ;
Inst: Instr
    |
    ;
Instr: Ident AFFECTATION Exp I
     | SI Ident ALORS Instr SINON Instr FSI
     | SI Ident ALORS Instr FSI
     ;
I: PointVirgule Instr
 |
 ;
Exp: Exp Plus Exp
   | Ident
   | Cste
   ;
Ident: Lettre SuitL
     ;
SuitL: Lettre SuitL
     | Chiffre SuitL
     |
     ;
Lettre: LETTRE
      ;

Chiffre: CHIFRRE
       ;
Cste: Chiffre SuitC
    ;
SuitC: SuitC Chiffre
     |
     ;
M: Virugule Ident M
 |
 ;
Num: Cste
   | VRAI
   | FAUX
   ;
%%
void yyerror(char *s) {
printf("%s\n", s);
}
void main(void) {
yyparse();
printf("fin d'evalution");
}
