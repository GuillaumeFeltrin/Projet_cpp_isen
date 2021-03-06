#ifndef CONSTANTE_H
#define CONSTANTE_H

#include <string>

#include "Expression.h"


class Constante : public Expression
{
private:
    float _valeur;
    std::string _symbol;
public:
    Constante(float val);
    virtual ~Constante() {}
    float calcul();
    bool isConstante();
    Expression* simplifier();
    void affichageClassique();
    void affichagePolonaiseInversee();
    std::string affichageClassiqueStr();
    std::string affichagePolonaiseInverseeStr();
    std::string ToString();
};

#endif // CONSTANTE_H
