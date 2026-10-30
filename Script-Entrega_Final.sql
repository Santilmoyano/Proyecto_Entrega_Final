-- se crea la base de datos
create database HBO;

-- se crean las tablas necesarias

create table peliculas (
pelicula_id serial primary key,
nombre varchar (100) not null,
fecha_estreno date,
generos varchar (250),
valoracion numeric (2,1) not null check (valoracion > 0) 
);

-- se insertan los datos de las tablas

begin;
insert into peliculas (nombre,fecha_estreno,generos,valoracion) values 
('Parasite', '2019-05-30', 'Thriller, Drama', 8.5),
('Joker', '2019-10-04', 'Drama, Thriller', 8.3),
('Avengers: Endgame', '2019-04-26', 'Acción, Ciencia ficción', 8.4),
('1917', '2019-12-25', 'Bélica, Drama', 8.2),
('Knives Out', '2019-11-27', 'Misterio, Comedia', 7.9),
('Interstellar', '2014-11-07', 'Ciencia ficción, Drama', 8.7),
('Dune', '2021-10-22', 'Ciencia ficción, Aventura', 8.0),
('Spider-Man: No Way Home', '2021-12-17', 'Acción, Aventura', 8.1),
('Top Gun: Maverick', '2022-05-27', 'Acción, Drama', 8.2),
('The Batman', '2022-03-04', 'Acción, Crimen', 7.8),
('Everything Everywhere All at Once', '2022-03-25', 'Ciencia ficción, Comedia', 7.8),
('Puss in Boots: The Last Wish', '2022-12-21', 'Animación, Aventura', 7.8),
('Oppenheimer', '2023-07-21', 'Drama, Histórico', 8.3),
('Spider-Man: Across the Spider-Verse', '2023-06-02', 'Animación, Acción', 8.5),
('Guardians of the Galaxy Vol. 3', '2023-05-05', 'Ciencia ficción, Aventura', 7.9),
('The Holdovers', '2023-10-27', 'Comedia, Drama', 7.9),
('Dune: Part Two', '2024-03-01', 'Ciencia ficción, Aventura', 8.5),
('The Wild Robot', '2024-09-27', 'Animación, Aventura', 8.2),
('Inside Out 2', '2024-06-14', 'Animación, Comedia', 7.6),
('Deadpool & Wolverine', '2024-07-26', 'Acción, Comedia', 7.5),
('Godzilla Minus One', '2023-12-01', 'Acción, Ciencia ficción', 7.7),
('The Super Mario Bros. Movie', '2023-04-05', 'Animación, Aventura', 7.0),
('John Wick: Chapter 4', '2023-03-24', 'Acción, Thriller', 7.6),
('The Gentlemen', '2019-12-03', 'Crimen, Comedia', 7.8),
('Ford v Ferrari', '2019-11-15', 'Drama, Deportes', 8.1);

commit;

-- consulta para filtrar cuales son las 10 mejor valoradas

select nombre,fecha_estreno,generos,valoracion
from peliculas
order by valoracion desc
limit 10;


