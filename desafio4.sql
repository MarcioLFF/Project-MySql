SELECT users.nome AS usuario, 
	IF(MAX(YEAR(hist.data_reproducao) = '2021'), 'Usuário ativo', 'Usuário inativo') AS condicao_usuario
FROM SpotifyClone.usuarios AS users
INNER JOIN SpotifyClone.historico_reproducao AS hist
	ON users.usuario_id = hist.usuario_id
GROUP BY users.nome
ORDER BY users.nome