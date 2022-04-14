SELECT ROUND(MIN(p.value), 2) AS faturamento_minimo, 
ROUND(MAX(p.value), 2) AS faturamento_maximo,
ROUND(AVG(value), 2) AS faturamento_medio,
ROUND(SUM(value), 2) AS faturamento_total
FROM SpotifyClone.plan AS p
JOIN SpotifyClone.user AS u
ON p.plan_id = u.plan_id;