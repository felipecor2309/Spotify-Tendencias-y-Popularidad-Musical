# Spotify-Tendencias-y-Popularidad-Musical
Análisis exploratorio sobre la música de la plataforma Spotify

## Objetivo
Explorar un dataset de más de 114.000 canciones de Spotify para identificar los artistas y géneros más populares, analizar características musicales como energía y bailabilidad, y detectar patrones en el contenido explícito por género.

## Datos
- Fuente: Kaggle - Spotify Tracks Dataset (https://www.kaggle.com/datasets/maharshipandya/-spotify-tracks-dataset)
- Contenido: 114.000 canciones con variables de popularidad, género, energía, bailabilidad y contenido explícito
- Variables principales: artists, track_genre, popularity, energy, danceability, explicit

## Herramientas
- Python (pandas) — limpieza y selección de columnas relevantes
- PostgreSQL — análisis mediante consultas SQL (archivo .sql disponible en este repositorio)
- Power BI — construcción del dashboard interactivo

## Proceso
os datos fueron limpiados con Python eliminando columnas irrelevantes, luego importados a PostgreSQL para el análisis. Finalmente se construyó un dashboard interactivo en Power BI con identidad visual inspirada en Spotify.

## Hallazgos principales
1. The Beatles es el artista con mayor popularidad acumulada en el dataset.
2. Pop-film es el género con mayor popularidad promedio, superando géneros mainstream como pop y k-pop.
3. La bailabilidad se mantiene relativamente estable entre géneros, mientras que la energía muestra alta varianza con picos y caídas significativas.
4. Comedy es el género con más canciones explícitas, seguido de emo y sad.

## Dashboard
<img width="1450" height="866" alt="image" src="https://github.com/user-attachments/assets/89c84ef1-7821-443e-ab44-20b484971adb" />
Archivo .pbix disponible en este repositorio.
