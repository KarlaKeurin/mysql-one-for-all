SELECT
	artists.name_artist AS artista,
    albums.name_album AS album,
    COUNT(followers.artist_id) AS pessoas_seguidoras
FROM
	artists
INNER JOIN albums ON artists.artist_id = albums.artist_id
INNER JOIN followers ON artists.artist_id = followers.artist_id
GROUP BY
    artists.name_artist, albums.name_album
ORDER BY 
	pessoas_seguidoras DESC, artista, album;