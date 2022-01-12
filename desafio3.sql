SELECT users.nome AS usuario,
	COUNT(hist.usuario_id) AS qtde_musicas_ouvidas,
    ROUND(SUM(music.duracao_segundos / 60), 2) AS total_minutos
FROM SpotifyClone.usuarios as users
INNER JOIN SpotifyClone.historico_reproducao AS hist
	ON users.usuario_id = hist.usuario_id
INNER JOIN SpotifyClone.musicas AS music
	ON music.musica_id = hist.musica_id
GROUP BY users.nome
ORDER BY users.nome ASC;