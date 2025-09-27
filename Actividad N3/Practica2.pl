%Hechos
pais(argentina).
pais(uruguay).
provincia(santa_cruz).
departamento(canelones).

% Declaraciones vacias (no hay hechos, por eso siempre seran falsas)
:- dynamic lago/1.
:- dynamic ciudad/1.

%Consultas
:- writeln('¿Es Marruecos un pais?'),
    (pais(marruecos) -> writeln('Si'); writeln('No, no hay informacion')).

:- writeln('¿Es Ganges un lago?'),
    (lago(ganges) -> writeln('Si'); writeln('No, no hay informacion')).

:- writeln('¿Es Estonia una ciudad?'),
    (ciudad(estonia) -> writeln('Si'); writeln('No, no hay informacion')).
