#include <stdio.h>
#include <stdlib.h>
#define MAX_SYMBOLS 10
typedef struct {
  char *nom;
  char type; // e pour ent et b pour Bool
  value union {
     ent e;
     Bool b;
  }
} symbol;
symbol stable[MAX_SYMBOLS];
int symbolCount=0;

int isDefined(char *nom);  // returns le type si le nom du symbole existe dans la table 
symbol* addSymbol(char *nom, char type);  // ajoute le symbole return son pointeur 
symbol* getSymbol(char *nom); // return le ponteur du nom de symbole ou bien NULL 
