SELECT s.name AS cancao, 
COUNT(p.song_id) AS reproducoes
FROM SpotifyClone.song AS s
JOIN SpotifyClone.play_history AS p
ON s.song_id = p.song_id
GROUP BY s.name
ORDER BY COUNT(p.song_id) DESC, s.name
LIMIT 2;