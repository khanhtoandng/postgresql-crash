-- GROUP BY
SELECT user_id, MAX(id)
FROM comments
GROUP BY user_id

-- HAVING
SELECT photo_id, COUNT(*) 
FROM comments
WHERE photo_id < 3
GROUP BY photo_id
HAVING COUNT(*) > 2