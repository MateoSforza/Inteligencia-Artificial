% Hechos
pais(argentina).
pais(uruguay).

provincia(santa_cruz).
departamento(canelones).

% Relaciones
% Santa Cruz pertenece a Argentina
pertenece(santa_cruz, argentina).

% Canelones pertenece a Uruguay
pertenece(canelones, uruguay).

%Consultas de prueba automáticas
:- writeln('--- Consultas de prueba ---').

:- writeln('Paises:'),
    (pais(X), writeln(X), fail; true).

:- writeln('Santa Cruz pertenece a:'),
    (pertenece(santa_cruz, P), writeln(P), fail; true).

:- writeln('Regiones de Uruguay:'),
    (pertenece(X, uruguay), writeln(X), fail; true).
