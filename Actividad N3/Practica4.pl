%Hechos
electrico(pikachu).
electrico(raichu).

hierba(bulbasaur).

fuego(charmander).
fuego(charizard).

%Consultas
:- writeln('--- Consultas de prueba ---').

:- writeln('¿Pikachu es electrico?'),
    (electrico(pikachu) -> writeln('Si'); writeln('No')).

:- writeln('¿Quienes son electricos?'),
    (electrico(X), writeln(X), fail; true).

:- writeln('¿Quienes son de tipo fuego?'),
    (fuego(X), writeln(X), fail; true).

:- writeln('¿Quienes son de tipo hierba?'),
    (hierba(X), writeln(X), fail; true).
