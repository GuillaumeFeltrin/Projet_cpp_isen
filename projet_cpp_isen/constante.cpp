#include "constante.h"

Constante::Constante(float val)
{
 _valeur = val;
}

void Constante::affichageClassique(){
    cout << _valeur;
}

void Constante::affichagePolonaiseInversee(){
    cout << _valeur;
}


float Constante :: calcul(){
    return _valeur;
}

std::string Constante::affichageClassiqueStr() {
    std::string str = std::to_string(_valeur);
    return str;
}

std::string Constante::affichagePolonaiseInverseeStr() {
    std::string str = std::to_string(_valeur);
    return str;
}
