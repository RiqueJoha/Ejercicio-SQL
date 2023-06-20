CREATE DATABASE cine;

USE cine;

CREATE TABLE peliculas (
  id INT AUTO_INCREMENT PRIMARY KEY,
  nombre VARCHAR(255),
  ano_estreno INT,
  recaudacion_millones DECIMAL(10,2),
  director VARCHAR(255),
  plataforma_streaming VARCHAR(255)
);

INSERT INTO peliculas (nombre, ano_estreno, recaudacion_millones, director, plataforma_streaming) 
VALUES 
  ('Película 1', 2020, 100.50, 'Director 1', 'Netflix'),
  ('Película 2', 2019, 150.75, 'Director 2', 'Amazon'),
  ('Película 3', 2021, 80.25, 'Director 3', 'HBO');
