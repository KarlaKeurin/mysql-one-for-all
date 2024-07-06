SELECT
	users.username AS pessoa_usuaria,
	IF(MAX(reproduction_datetime) >= '2021-01-01', 'Ativa', 'Inativa') AS status_pessoa_usuaria
FROM users
INNER JOIN historic ON users.user_id = historic.user_id
GROUP BY
	users.username
ORDER BY
	users.username;