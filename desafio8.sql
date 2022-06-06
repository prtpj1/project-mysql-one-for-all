SELECT
	artists.`name` AS artista,
    album.`name` AS album
FROM artists
JOIN album
	ON artists.id = album.artist_id
WHERE artists.`name` LIKE 'Walter Phoenix'
;