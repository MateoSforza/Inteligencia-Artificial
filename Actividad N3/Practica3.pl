%Hechos
come(ramiro, carne).
come(ana, verduras).

no_come(nina, pastas).
no_come(ana, carne).

%Consultas de prueba automáticas
:- writeln('--- Consultas de prueba ---').

:- writeln('¿Ramiro come carne?'),
    (come(ramiro, carne) -> writeln('Si'); writeln('No')).

:- writeln('¿Ana come carne?'),
    (come(ana, carne) -> writeln('Si'); writeln('No')),
    (no_come(ana, carne) -> writeln('Ana no come carne'); true).

:- writeln('¿Quien no come pastas?'),
    (no_come(X, pastas), writeln(X), fail; true).

:- writeln('¿Que cosas come Ana?'),
    (come(ana, X), writeln(X), fail; true).