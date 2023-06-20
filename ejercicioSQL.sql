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

ALTER TABLE peliculas ADD COLUMN tiene_plataforma_streaming BOOLEAN;

UPDATE peliculas SET tiene_plataforma_streaming = (plataforma_streaming IS NOT NULL);

INSERT INTO peliculas (nombre, ano_estreno, recaudacion_millones, director, plataforma_streaming, tiene_plataforma_streaming)
VALUES
  ('Película 4', 2022, 90.80, 'Director 4', 'Plataforma 4', TRUE),
  ('Película 5', 2023, 70.50, 'Director 5', NULL, FALSE);

ALTER TABLE peliculas ADD COLUMN plataforma_streaming VARCHAR(255) DEFAULT 'No tiene';
ALTER TABLE peliculas ADD COLUMN tiene_plataforma_streaming BOOLEAN DEFAULT FALSE;


INSERT INTO peliculas (nombre, ano_estreno, recaudacion_millones, director, plataforma_streaming, tiene_plataforma_streaming)
VALUES
  ('Película 6', 2023, 80.25, 'Director 6', 'Plataforma 6', TRUE),
  ('Película 7', 2024, 60.50, 'Director 7', NULL, FALSE);

ALTER TABLE peliculas ALTER COLUMN tiene_plataforma_streaming SET DEFAULT (plataforma_streaming != "no tiene");

ALTER TABLE peliculas ADD COLUMN valio_la_pena BOOLEAN DEFAULT (recaudacion_millones > 80.50);

INSERT INTO peliculas (nombre, ano_estreno, recaudacion_millones, director, plataforma_streaming)
VALUES
  ('Película 8', 2025, 90.75, 'Director 8', 'Plataforma 8'),
  ('Película 9', 2026, 70.25, 'Director 9', NULL);
