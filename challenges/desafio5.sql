SELECT
	musics.name_music AS cancao,
    COUNT(historic.music_id) AS reproducoes
FROM
	musics
INNER JOIN historic ON musics.music_id = historic.music_id
GROUP BY
	musics.music_id
ORDER BY
	reproducoes DESC, musics.name_music ASC
LIMIT 2;