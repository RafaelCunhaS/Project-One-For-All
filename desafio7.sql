SELECT art.name AS artista, 
alb.name AS album,
COUNT(fol.user_id) AS seguidores
FROM SpotifyClone.artist AS art
RIGHT JOIN SpotifyClone.album AS alb
ON art.artist_id = alb.artist_id
JOIN SpotifyClone.followed_artist AS fol
ON art.artist_id = fol.artist_id
GROUP BY art.name, alb.name
ORDER BY COUNT(fol.user_id) DESC, art.name, alb.name;