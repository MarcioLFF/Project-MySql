SELECT music.nome AS cancao,
	COUNT(hist.musica_id) AS reproducoes
FROM SpotifyClone.musicas AS music
INNER JOIN SpotifyClone.historico_reproducao AS hist
	ON music.musica_id = hist.musica_id
GROUP BY music.nome
ORDER BY reproducoes DESC, cancao
LIMIT 2