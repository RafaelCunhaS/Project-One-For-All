SELECT u.name AS usuario, 
COUNT(DISTINCT p.song_id) AS qtde_musicas_ouvidas, 
ROUND((SUM(s.length) / 60), 2) AS total_minutos
FROM SpotifyClone.user AS u
JOIN SpotifyClone.play_history AS p
ON u.user_id = p.user_id
JOIN SpotifyClone.song AS s
ON p.song_id = s.song_id
GROUP BY u.name;