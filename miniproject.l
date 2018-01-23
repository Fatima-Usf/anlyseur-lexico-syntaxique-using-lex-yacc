%{
#include <stdio.h>
#include <stdlib.h>
#include "miniproject.tab.h"
%}

%%
"programme" {return PROGRAMME;}
"debut" {return DEBUT;}
"fin" {return FIN;}
"const" {return CONST;}
"=" {return Egale;}
"var" {return VAR;}
":=" {return AFFECTATION;}
"si" {return SI;}
"alors" {return ALORS;}
"sinon" {return SINON;}
"fsi" {return FSI;}
";" {return PointVirgule;}
"+" {return Plus;}
"vrai" {return VRAI;}
"faux" {return FAUX;}
":" {return DeuxPoint;}
"," {return Virugule;}
[a-zA-Z] {return LETTRE;}
[0-9] {return CHIFRRE;}
"ent" {return ENT;}
"bool" {return BOOL;}
[ \t\n]+ ;

%%
