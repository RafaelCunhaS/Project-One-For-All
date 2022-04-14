SELECT s.name AS nome,
COUNT(*) AS reproducoes
FROM SpotifyClone.song AS s
JOIN SpotifyClone.play_history AS p
ON s.song_id = p.song_id
JOIN SpotifyClone.user AS u
ON p.user_id = u.user_id
JOIN SpotifyClone.plan AS pl
ON u.plan_id = pl.plan_id
WHERE pl.name = 'gratuito' OR pl.name = 'pessoal'
GROUP BY s.name
ORDER BY s.name;