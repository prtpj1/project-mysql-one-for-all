SELECT 
    `user`.`name` AS usuario,
    IF(MAX(YEAR(user_history.rep_date)) = 2021,
        'Usuário ativo',
        'Usuário inativo') AS condicao_usuario
FROM
    user
        JOIN
    user_history ON user.id = user_history.user_id
GROUP BY usuario
ORDER BY usuario
;