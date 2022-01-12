SELECT 
	artistas.nome AS artista,
	album.nome AS album,
    COUNT(seguidores.artista_id) AS seguidores
FROM SpotifyClone.artistas AS artistas
INNER JOIN SpotifyClone.album AS album
	ON artistas.artista_id = album.artista_id
INNER JOIN SpotifyClone.seguindo_artista AS seguidores
	ON artistas.artista_id = seguidores.artista_id
GROUP BY album.album_id
ORDER BY seguidores DESC, artista, album