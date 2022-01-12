SELECT 	
	ROUND(MIN(plans.valor_plano),2) AS faturamento_minimo,
    MAX(plans.valor_plano) AS faturamento_maximo,
    ROUND(AVG(plans.valor_plano),2) AS faturamento_medio,
    ROUND(SUM(plans.valor_plano),2) AS faturamento_total
FROM SpotifyClone.usuarios AS users
INNER JOIN SpotifyClone.planos AS plans
	ON users.plano_id = plans.plano_id