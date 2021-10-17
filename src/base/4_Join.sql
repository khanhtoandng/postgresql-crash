-- JOIN:
-- select rows from one table that has the corresponding rows in other tables
SELECT contents, username 
FROM  users
JOIN comments ON comments.user_id = users.id

-- LEFT JOIN/ RIGHT JOIN
-- select rows from one table that may or may not have the corresponding rows in other tables
SELECT contents, username 
FROM  users
LEFT JOIN comments ON comments.user_id = users.id

-- FULL JOIN
-- The full join combines the results of both left join and right join.
SELECT contents, username 
FROM  users
FULL JOIN comments ON comments.user_id = users.id