SELECT
	artists.name_artist AS artista,
    albums.name_album AS album
FROM
	artists
INNER JOIN albums ON artists.artist_id = albums.artist_id
WHERE artists.name_artist = 'Elis Regina'
ORDER BY 
	album;