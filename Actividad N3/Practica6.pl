% -------- Hechos --------
contador(roque).
ingeniera(ana).
abogada(cecilia).

honesto(roque).
honesto(ana).

joven(roque).
no_joven(ana).


% -------- Consultas de prueba automaticas --------
:- writeln('--- Consultas de prueba ---').

:- writeln('¿Roque es honesto?'),
    (honesto(roque) -> writeln('Si'); writeln('No')).

:- writeln('¿Ana es ingeniera y honesta?'),
    (ingeniera(ana), honesto(ana) -> writeln('Si'); writeln('No')).

:- writeln('¿Ana es joven?'),
    (joven(ana) -> writeln('Si'); writeln('No')).

:- writeln('¿Quienes son honestos?'),
    (honesto(X), writeln(X), fail; true).

:- writeln('¿Que profesion tiene Cecilia?'),
    (abogada(cecilia) -> writeln('Cecilia es abogada'); writeln('No hay informacion')).
