-- 1. Imprime las 5 canciones con mas duracion

SELECT sub.titulo_cancion, sub.nombre_artista, sub.duracion
FROM (
    SELECT c.titulo_cancion, ar.nombre_artista, c.duracion
    FROM canciones c
    JOIN artistas ar ON c.id_artista = ar.id_artista
    ORDER BY c.duracion DESC
    LIMIT 5
) AS sub
ORDER BY sub.titulo_cancion;


-- 2. Imprime canciones de un artista especifico e imprime la duracion de la cancion y el album al que pertenece la cancion

SELECT *
FROM (
    SELECT c.titulo_cancion, c.duracion, a.titulo_album 
    FROM canciones c
    JOIN albumes a ON c.id_album = a.id_album
    JOIN artistas ar ON c.id_artista = ar.id_artista
    WHERE ar.nombre_artista = 'Shakira'
) AS sub
WHERE sub.duracion > 180;


-- 3. Imprimir el álbum y el género dentro de una consulta que excluye géneros 'Pop'

SELECT sub.titulo_album, sub.nombre_genero
FROM (
    SELECT a.titulo_album, g.nombre_genero
    FROM albumes a
    JOIN artistas ar ON a.id_artista = ar.id_artista
    JOIN generos g ON ar.id_genero = g.id_genero
) AS sub
WHERE sub.nombre_genero != 'Pop';


-- 4. Mostrar todas las canciones y los álbumes a los que pertenecen, pero también todas las canciones que no están asociadas a ningún álbum

SELECT c.titulo_cancion, a.titulo_album
FROM canciones c
LEFT JOIN albumes a ON c.id_album = a.id_album
UNION
SELECT c.titulo_cancion, a.titulo_album
FROM canciones c
RIGHT JOIN albumes a ON c.id_album = a.id_album;


