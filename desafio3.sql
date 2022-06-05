SELECT 
    `user`.`name` AS usuario,
    COUNT(user_history.song_id) AS qtde_musicas_ouvidas,
    ROUND(SUM(song.duration / 60), 2) AS total_minutos
FROM
    `user`
        JOIN
    user_history ON user.id = user_history.user_id
        JOIN
    song ON user_history.song_id = song.id
GROUP BY `user`.`name`
ORDER BY `user`.`name`
;