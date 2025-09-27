%Genero
hombre(abraham).
hombre(clancy).
hombre(herb).
hombre(homer).
hombre(bart).

mujer(mona).
mujer(jackie).
mujer(marge).
mujer(patty).
mujer(selma).
mujer(lisa).
mujer(maggie).
mujer(ling).

%Relaciones
% Padres
padre(abraham, herb).
padre(abraham, homer).
padre(clancy, marge).
padre(clancy, patty).
padre(clancy, selma).
padre(homer, bart).
padre(homer, lisa).
padre(homer, maggie).

madre(mona, herb).
madre(mona, homer).
madre(jackie, marge).
madre(jackie, patty).
madre(jackie, selma).
madre(marge, bart).
madre(marge, lisa).
madre(marge, maggie).
madre(selma, ling).

%Reglas
hermano(X,Y) :-
    hombre(X),
    padre(P,X), padre(P,Y),
    madre(M,X), madre(M,Y),
    X \= Y.

hermana(X,Y) :-
    mujer(X),
    padre(P,X), padre(P,Y),
    madre(M,X), madre(M,Y),
    X \= Y.

abuelo(X,Y) :-
    hombre(X),
    padre(X,P),
    (padre(P,Y) ; madre(P,Y)).

abuela(X,Y) :-
    mujer(X),
    madre(X,P),
    (padre(P,Y) ; madre(P,Y)).

tio(X,Y) :-
    hombre(X),
    (hermano(X,P) ; hermano(X,M)),
    (padre(P,Y) ; madre(P,Y)).

tia(X,Y) :-
    mujer(X),
    (hermana(X,P) ; hermana(X,M)),
    (padre(P,Y) ; madre(P,Y)).

%Consultas
:- writeln('--- Consultas de prueba ---').

:- writeln('Abuelos de Bart:'),
    (abuelo(X, bart), writeln(X), fail; true).

:- writeln('Abuela de Ling:'),
    (abuela(X, ling), writeln(X), fail; true).

:- writeln('Hermanos de Lisa:'),
    (hermano(X, lisa), writeln(X), fail; true),
    (hermana(X, lisa), writeln(X), fail; true).
