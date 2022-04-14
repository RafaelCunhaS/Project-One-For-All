SELECT COUNT(*) AS quantidade_musicas_no_historico
FROM SpotifyClone.user AS u
JOIN SpotifyClone.play_history AS p
ON u.user_id = p.user_id
WHERE u.name = 'Bill';