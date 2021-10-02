-- JOIN
SELECT contents, username 
FROM  users
JOIN comments ON comments.user_id = users.id