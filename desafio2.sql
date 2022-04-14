SELECT COUNT(*) AS cancoes, 
COUNT(DISTINCT a.artist_id) AS artistas, 
COUNT(DISTINCT a.name) AS albuns
FROM SpotifyClone.song AS s
LEFT JOIN SpotifyClone.album AS a
ON s.album_id = a.album_id;