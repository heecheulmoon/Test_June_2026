-- Mission Impossible Database Schema and Data

CREATE TABLE IF NOT EXISTS movies (
    id INTEGER PRIMARY KEY,
    title TEXT NOT NULL,
    release_year INTEGER NOT NULL,
    director TEXT NOT NULL,
    budget_million REAL,
    worldwide_gross_million REAL,
    rotten_tomatoes_score INTEGER,
    imdb_score REAL
);

CREATE TABLE IF NOT EXISTS actors (
    id INTEGER PRIMARY KEY,
    name TEXT NOT NULL UNIQUE
);

CREATE TABLE IF NOT EXISTS characters (
    id INTEGER PRIMARY KEY,
    movie_id INTEGER NOT NULL,
    actor_id INTEGER NOT NULL,
    character_name TEXT NOT NULL,
    FOREIGN KEY (movie_id) REFERENCES movies(id),
    FOREIGN KEY (actor_id) REFERENCES actors(id)
);

-- Movies
INSERT INTO movies VALUES (1, 'Mission: Impossible', 1996, 'Brian De Palma', 80, 457.7, 66, 7.1);
INSERT INTO movies VALUES (2, 'Mission: Impossible 2', 2000, 'John Woo', 125, 546.4, 57, 6.1);
INSERT INTO movies VALUES (3, 'Mission: Impossible III', 2006, 'J.J. Abrams', 150, 398.5, 70, 6.9);
INSERT INTO movies VALUES (4, 'Mission: Impossible - Ghost Protocol', 2011, 'Brad Bird', 145, 694.7, 93, 7.4);
INSERT INTO movies VALUES (5, 'Mission: Impossible - Rogue Nation', 2015, 'Christopher McQuarrie', 150, 682.7, 93, 7.4);
INSERT INTO movies VALUES (6, 'Mission: Impossible - Fallout', 2018, 'Christopher McQuarrie', 178, 791.1, 97, 7.7);
INSERT INTO movies VALUES (7, 'Mission: Impossible - Dead Reckoning Part One', 2023, 'Christopher McQuarrie', 290, 571.1, 96, 7.7);
INSERT INTO movies VALUES (8, 'Mission: Impossible - The Final Reckoning', 2025, 'Christopher McQuarrie', 300, 598.8, 94, 7.2);

-- Actors
INSERT INTO actors VALUES (1, 'Tom Cruise');
INSERT INTO actors VALUES (2, 'Jon Voight');
INSERT INTO actors VALUES (3, 'Emmanuelle Béart');
INSERT INTO actors VALUES (4, 'Ving Rhames');
INSERT INTO actors VALUES (5, 'Jean Reno');
INSERT INTO actors VALUES (6, 'Dougray Scott');
INSERT INTO actors VALUES (7, 'Thandiwe Newton');
INSERT INTO actors VALUES (8, 'Anthony Hopkins');
INSERT INTO actors VALUES (9, 'Philip Seymour Hoffman');
INSERT INTO actors VALUES (10, 'Michelle Monaghan');
INSERT INTO actors VALUES (11, 'Billy Crudup');
INSERT INTO actors VALUES (12, 'Jeremy Renner');
INSERT INTO actors VALUES (13, 'Simon Pegg');
INSERT INTO actors VALUES (14, 'Paula Patton');
INSERT INTO actors VALUES (15, 'Rebecca Ferguson');
INSERT INTO actors VALUES (16, 'Sean Harris');
INSERT INTO actors VALUES (17, 'Alec Baldwin');
INSERT INTO actors VALUES (18, 'Henry Cavill');
INSERT INTO actors VALUES (19, 'Angela Bassett');
INSERT INTO actors VALUES (20, 'Vanessa Kirby');
INSERT INTO actors VALUES (21, 'Hayley Atwell');
INSERT INTO actors VALUES (22, 'Esai Morales');
INSERT INTO actors VALUES (23, 'Pom Klementieff');

-- Characters (movie_id, actor_id, character_name)
-- MI 1 (1996)
INSERT INTO characters VALUES (1, 1, 1, 'Ethan Hunt');
INSERT INTO characters VALUES (2, 1, 2, 'Jim Phelps');
INSERT INTO characters VALUES (3, 1, 3, 'Claire Phelps');
INSERT INTO characters VALUES (4, 1, 4, 'Luther Stickell');
INSERT INTO characters VALUES (5, 1, 5, 'Franz Krieger');

-- MI 2 (2000)
INSERT INTO characters VALUES (6, 2, 1, 'Ethan Hunt');
INSERT INTO characters VALUES (7, 2, 6, 'Sean Ambrose');
INSERT INTO characters VALUES (8, 2, 7, 'Nyah Nordoff-Hall');
INSERT INTO characters VALUES (9, 2, 4, 'Luther Stickell');
INSERT INTO characters VALUES (10, 2, 8, 'Mission Commander Swanbeck');

-- MI 3 (2006)
INSERT INTO characters VALUES (11, 3, 1, 'Ethan Hunt');
INSERT INTO characters VALUES (12, 3, 9, 'Owen Davian');
INSERT INTO characters VALUES (13, 3, 10, 'Julia Meade');
INSERT INTO characters VALUES (14, 3, 4, 'Luther Stickell');
INSERT INTO characters VALUES (15, 3, 11, 'John Musgrave');

-- Ghost Protocol (2011)
INSERT INTO characters VALUES (16, 4, 1, 'Ethan Hunt');
INSERT INTO characters VALUES (17, 4, 12, 'William Brandt');
INSERT INTO characters VALUES (18, 4, 13, 'Benji Dunn');
INSERT INTO characters VALUES (19, 4, 14, 'Jane Carter');
INSERT INTO characters VALUES (20, 4, 4, 'Luther Stickell');

-- Rogue Nation (2015)
INSERT INTO characters VALUES (21, 5, 1, 'Ethan Hunt');
INSERT INTO characters VALUES (22, 5, 15, 'Ilsa Faust');
INSERT INTO characters VALUES (23, 5, 13, 'Benji Dunn');
INSERT INTO characters VALUES (24, 5, 16, 'Solomon Lane');
INSERT INTO characters VALUES (25, 5, 4, 'Luther Stickell');
INSERT INTO characters VALUES (26, 5, 17, 'Alan Hunley');
INSERT INTO characters VALUES (27, 5, 12, 'William Brandt');

-- Fallout (2018)
INSERT INTO characters VALUES (28, 6, 1, 'Ethan Hunt');
INSERT INTO characters VALUES (29, 6, 18, 'August Walker');
INSERT INTO characters VALUES (30, 6, 15, 'Ilsa Faust');
INSERT INTO characters VALUES (31, 6, 13, 'Benji Dunn');
INSERT INTO characters VALUES (32, 6, 4, 'Luther Stickell');
INSERT INTO characters VALUES (33, 6, 19, 'Erika Sloane');
INSERT INTO characters VALUES (34, 6, 20, 'White Widow');
INSERT INTO characters VALUES (35, 6, 16, 'Solomon Lane');
INSERT INTO characters VALUES (36, 6, 17, 'Alan Hunley');

-- Dead Reckoning Part One (2023)
INSERT INTO characters VALUES (37, 7, 1, 'Ethan Hunt');
INSERT INTO characters VALUES (38, 7, 21, 'Grace');
INSERT INTO characters VALUES (39, 7, 13, 'Benji Dunn');
INSERT INTO characters VALUES (40, 7, 4, 'Luther Stickell');
INSERT INTO characters VALUES (41, 7, 22, 'Gabriel');
INSERT INTO characters VALUES (42, 7, 20, 'White Widow');
INSERT INTO characters VALUES (43, 7, 23, 'Paris');

-- The Final Reckoning (2025)
INSERT INTO characters VALUES (44, 8, 1, 'Ethan Hunt');
INSERT INTO characters VALUES (45, 8, 21, 'Grace');
INSERT INTO characters VALUES (46, 8, 13, 'Benji Dunn');
INSERT INTO characters VALUES (47, 8, 4, 'Luther Stickell');
INSERT INTO characters VALUES (48, 8, 22, 'Gabriel');

-- Useful views
CREATE VIEW movie_summary AS
SELECT
    m.title,
    m.release_year,
    m.director,
    m.budget_million || 'M' AS budget,
    m.worldwide_gross_million || 'M' AS worldwide_gross,
    ROUND(m.worldwide_gross_million / m.budget_million, 2) AS roi_multiplier,
    m.rotten_tomatoes_score AS rt_score,
    m.imdb_score
FROM movies m
ORDER BY m.release_year;

CREATE VIEW actor_filmography AS
SELECT
    a.name AS actor,
    m.title AS movie,
    c.character_name,
    m.release_year
FROM characters c
JOIN actors a ON c.actor_id = a.id
JOIN movies m ON c.movie_id = m.id
ORDER BY a.name, m.release_year;
