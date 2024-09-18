CREATE DATABASE codemusic;
USE codemusic;

-- SE CREA LA TABLA "GENEROS"
CREATE TABLE generos (
    id_genero INT AUTO_INCREMENT PRIMARY KEY,
    nombre_genero VARCHAR(50) NOT NULL
);

-- SE CREA LA TABLA "ARTISTAS"
CREATE TABLE artistas (
    id_artista INT AUTO_INCREMENT PRIMARY KEY,
    nombre_artista VARCHAR(100) NOT NULL,
    id_genero INT,
    FOREIGN KEY (id_genero) REFERENCES generos(id_genero) ON DELETE SET NULL
);

-- SE CREA LA TABLA "ALBUMS"
CREATE TABLE albumes (
    id_album INT AUTO_INCREMENT PRIMARY KEY,
    titulo_album VARCHAR(100) NOT NULL,
    fecha_lanzamiento DATE,
    id_artista INT,
    FOREIGN KEY (id_artista) REFERENCES artistas(id_artista) ON DELETE CASCADE
);

-- SE CREA LA TABLA "CANCIONES"
CREATE TABLE canciones (
    id_cancion INT AUTO_INCREMENT PRIMARY KEY,
    titulo_cancion VARCHAR(100) NOT NULL,
    duracion TIME,
    id_album INT,
    id_artista INT,
    FOREIGN KEY (id_album) REFERENCES albumes(id_album) ON DELETE CASCADE,
    FOREIGN KEY (id_artista) REFERENCES artistas(id_artista) ON DELETE CASCADE
);
