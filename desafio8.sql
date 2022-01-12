SELECT
	artistas.nome AS artista,
    album.nome AS album
FROM SpotifyClone.artistas AS artistas
INNER JOIN SpotifyClone.album AS album
	ON artistas.artista_id = album.artista_id
WHERE artistas.nome = 'Walter Phoenix'
ORDER BY album.nome