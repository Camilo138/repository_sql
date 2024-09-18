-- 0. Imprime las 5 canciones con mas duracion

SELECT c.titulo_cancion, ar.nombre_artista, c.duracion
FROM canciones c
JOIN artistas ar ON c.id_artista = ar.id_artista
ORDER BY c.duracion DESC
LIMIT 5;

-- 1. Imprime canciones de un artista especifico e imprime la duracion de la cancion y el album al que pertenece la cancion

SELECT c.titulo_cancion, c.duracion, a.titulo_album 
FROM canciones c
JOIN albumes a ON c.id_album = a.id_album
JOIN artistas ar ON c.id_artista = ar.id_artista
WHERE ar.nombre_artista = 'Shakira';

-- 2. Imprime el nombre del artista y el album del artista

SELECT ar.nombre_artista, a.titulo_album
FROM artistas ar
LEFT JOIN albumes a ON ar.id_artista = a.id_artista;

-- 3. Imprime el album y el genero musical del album

SELECT a.titulo_album, g.nombre_genero
FROM albumes a
RIGHT JOIN artistas ar ON a.id_artista = ar.id_artista
RIGHT JOIN generos g ON ar.id_genero = g.id_genero;

-- 4. Mostrar todas las canciones y los álbumes a los que pertenecen, pero también todas las canciones que no están asociadas a ningún álbum

SELECT c.titulo_cancion, a.titulo_album
FROM canciones c
LEFT JOIN albumes a ON c.id_album = a.id_album
UNION
SELECT c.titulo_cancion, a.titulo_album
FROM canciones c
RIGHT JOIN albumes a ON c.id_album = a.id_album;






