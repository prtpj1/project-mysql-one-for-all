SELECT
		artists.`name` AS artista,
    album.`name` AS album,
    COUNT(ufa.user_id) AS seguidores
FROM artists

	JOIN album
		ON artists.id = album.artist_id
	JOIN user_favorite_artist AS ufa
		ON artists.id = ufa.artist_id

GROUP BY
		artista,
    album
ORDER BY seguidores DESC,
artista,
album;