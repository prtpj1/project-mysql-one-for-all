SELECT 
    song.`name` AS cancao,
    COUNT(user_history.song_id) AS reproducoes
FROM song
	JOIN
		user_history
			ON song.id = user_history.song_id
GROUP BY cancao
ORDER BY reproducoes DESC ,
cancao LIMIT 2
;