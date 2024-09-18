-- DATOS GENEROS 
INSERT INTO generos (nombre_genero) VALUES 
('Pop'),
('Reggaeton'),
('Rock'),
('Cumbia'),
('Salsa');

-- DATOS DE ARTISTA
INSERT INTO artistas (nombre_artista, id_genero) VALUES 
('Shakira', 1), -- Pop
('Bad Bunny', 2), -- Reggaeton
('Maná', 3), -- Rock
('Los Ángeles Azules', 4), -- Cumbia
('Marc Anthony', 5); -- Salsa

-- DATOS DE ALBUMES
INSERT INTO albumes (titulo_album, fecha_lanzamiento, id_artista) VALUES 
('Fijación Oral Vol. 1', '2005-06-03', 1), -- Shakira
('YHLQMDLG', '2020-02-29', 2), -- Bad Bunny
('Amar es Combatir', '2006-08-22', 3), -- Maná
('Cómo Te Voy a Olvidar', '1996-09-24', 4), -- Los Ángeles Azules
('3.0', '2013-07-23', 5); -- Marc Anthony

-- DATOS DE CANCIONES 
INSERT INTO canciones (titulo_cancion, duracion, id_album, id_artista) VALUES 
('La Tortura', '00:03:33', 1, 1), -- Shakira, Fijación Oral Vol. 1
('No', '00:04:45', 1, 1), -- Shakira, Fijación Oral Vol. 1
('Safaera', '00:04:55', 2, 2), -- Bad Bunny, YHLQMDLG
('La Difícil', '00:02:43', 2, 2), -- Bad Bunny, YHLQMDLG
('Labios Compartidos', '00:05:17', 3, 3), -- Maná, Amar es Combatir
('Bendita tu Luz', '00:04:31', 3, 3), -- Maná, Amar es Combatir
('El Listón de tu Pelo', '00:03:45', 4, 4), -- Los Ángeles Azules, Cómo Te Voy a Olvidar
('Cómo Te Voy a Olvidar', '00:03:33', 4, 4), -- Los Ángeles Azules, Cómo Te Voy a Olvidar
('Vivir mi Vida', '00:04:12', 5, 5), -- Marc Anthony, 3.0
('Flor Pálida', '00:04:47', 5, 5); -- Marc Anthony, 3.0
