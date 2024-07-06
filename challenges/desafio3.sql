SELECT
    users.username AS pessoa_usuaria,
    COUNT(historic.music_id) AS musicas_ouvidas,
    ROUND(SUM(musics.duration) / 60, 2) AS total_minutos
FROM
    users
INNER JOIN historic ON users.user_id = historic.user_id
INNER JOIN musics ON historic.music_id = musics.music_id

GROUP BY
    users.user_id
ORDER BY
	users.username;