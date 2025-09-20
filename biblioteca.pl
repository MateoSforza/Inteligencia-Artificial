% ========================
% Base de Conocimientos
% ========================

% libro(Id, Titulo, Autor).
libro(1, 'Cien años de soledad', 'Gabriel García Márquez').
libro(2, 'El principito', 'Antoine de Saint-Exupéry').
libro(3, 'Rayuela', 'Julio Cortázar').
libro(4, '1984', 'George Orwell').
libro(5, 'El señor de los anillos', 'J.R.R. Tolkien').
libro(6, 'Don Quijote de la Mancha', 'Miguel de Cervantes').
libro(7, 'La sombra del viento', 'Carlos Ruiz Zafón').
libro(8, 'Crónica de una muerte anunciada', 'Gabriel García Márquez').

% alquiler(LibroId, Usuario, Fecha).
alquiler(1, 'Juan', '2025-01-10').
alquiler(1, 'María', '2025-01-20').
alquiler(1, 'Ana', '2025-02-02').
alquiler(1, 'Carlos', '2025-02-18').
alquiler(1, 'Pedro', '2025-03-03').
alquiler(1, 'Sofía', '2025-03-12').
alquiler(1, 'Lucas', '2025-04-01').
alquiler(1, 'Martín', '2025-04-20').
alquiler(1, 'Valentina', '2025-05-01').
alquiler(1, 'Juan', '2025-05-15').
alquiler(1, 'Carlos', '2025-06-01').

alquiler(2, 'Sofía', '2025-01-10').
alquiler(2, 'Juan', '2025-02-20').
alquiler(3, 'Pedro', '2025-03-03').
alquiler(4, 'Ana', '2025-02-15').
alquiler(5, 'Lucas', '2025-02-25').
alquiler(7, 'María', '2025-03-10').
alquiler(8, 'Pedro', '2025-03-18').

% devolucion(LibroId, Usuario, Fecha).
devolucion(1, 'Juan', '2025-01-20').
devolucion(1, 'María', '2025-01-25').
devolucion(2, 'Sofía', '2025-01-30').
devolucion(4, 'Ana', '2025-03-01').
devolucion(5, 'Lucas', '2025-03-10').

% ========================
% Reglas
% ========================

% contar cuántas veces fue alquilado un libro
veces_alquilado(LibroId, Cantidad) :-
    findall(LibroId, alquiler(LibroId, _, _), Lista),
    length(Lista, Cantidad).

% identificar libro más prestado con condición >= 10
libro_mas_prestado(Titulo, Autor, Veces) :-
    libro(Id, Titulo, Autor),
    veces_alquilado(Id, Veces),
    Veces >= 10,
    \+ (libro(OtroId, _, _),
        veces_alquilado(OtroId, Veces2),
        Veces2 > Veces).

% saber quién no devolvió un libro
no_devolvio(LibroId, Usuario) :-
    alquiler(LibroId, Usuario, _),
    \+ devolucion(LibroId, Usuario, _).
