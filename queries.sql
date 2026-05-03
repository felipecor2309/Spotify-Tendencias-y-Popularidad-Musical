-- ¿Cuáles son los 10 artistas más populares?
SELECT
	DISTINCT artists,
	popularity
FROM spotify_tracks
ORDER BY popularity DESC
LIMIT 10;

-- ¿Qué género musical tiene mayor popularidad promedio?
SELECT
	track_genre,
	ROUND(AVG(popularity), 2) AS promedio_popularidad
FROM spotify_tracks
GROUP BY track_genre
ORDER BY promedio_popularidad DESC;

-- ¿Cuál es la relación entre energía y danceability por género?
SELECT
	ROUND(AVG(energy), 2) AS promedio_energia,
	ROUND(AVG(danceability), 2) AS promedio_bailable,
	track_genre
FROM spotify_tracks
GROUP BY track_genre
ORDER BY promedio_energia DESC;

-- ¿Qué géneros tienen más canciones explícitas?
SELECT
	COUNT(*) FILTER(WHERE explicit) AS explicidad,
	track_genre
FROM spotify_tracks
GROUP BY track_genrE
ORDER BY explicidad DESC;