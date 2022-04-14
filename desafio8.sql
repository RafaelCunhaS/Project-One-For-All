SELECT art.name AS artista, 
alb.name AS album
FROM SpotifyClone.artist AS art
JOIN SpotifyClone.album AS alb
ON art.artist_id = alb.artist_id
WHERE art.name = 'Walter Phoenix'
ORDER BY alb.name;