SELECT 
    COUNT(DISTINCT (song.id)) AS cancoes,
    COUNT(DISTINCT (artists.id)) AS artistas,
    COUNT(DISTINCT (album.id)) AS albuns
FROM
    song
    JOIN
    album ON song.album_id = album.id
    JOIN
    artists ON album.artist_id = artists.id;

