SELECT u.name AS usuario, 
IF(MAX(YEAR(p.date_time)) = 2021, 'Usuário ativo', 'Usuário inativo') AS condicao_usuario
FROM SpotifyClone.user AS u
JOIN SpotifyClone.play_history AS p
ON u.user_id = p.user_id
GROUP BY u.name;