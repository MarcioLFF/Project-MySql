SELECT
(SELECT COUNT(*) from SpotifyClone.musicas) as cancoes,
(SELECT COUNT(*) from SpotifyClone.artistas) as artistas,
(SELECT COUNT(*) from SpotifyClone.album) as albuns;