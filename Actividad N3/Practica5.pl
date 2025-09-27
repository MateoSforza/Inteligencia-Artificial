% -------- Hechos --------
poeta(jorge).
viveEn(jorge, flores).

poligrafo(manuel).
viveEn(manuel, flores).

tahur(bernardo).
apodo(bernardo, ruso).
viveEn(bernardo, flores).

viveEn(elDiablo, villa_crespo).

% -------- Consultas de prueba automaticas --------
:- writeln('--- Consultas de prueba ---').

:- writeln('¿Donde vive Jorge?'),
    (viveEn(jorge, X), writeln(X), fail; true).

:- writeln('¿Quienes viven en Flores?'),
    (viveEn(X, flores), writeln(X), fail; true).

:- writeln('¿Que hace Manuel?'),
    (poligrafo(manuel) -> writeln('Es poligrafo'); writeln('No hay informacion')).

:- writeln('¿Quien tiene el apodo de ruso?'),
    (apodo(X, ruso), writeln(X), fail; true).

:- writeln('¿Donde vive el Diablo?'),
    (viveEn(elDiablo, Lugar), writeln(Lugar), fail; true).
