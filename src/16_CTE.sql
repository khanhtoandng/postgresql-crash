WITH tags as (
    SELECT user_id, created_at FROM caption_tags
    UNION ALL
    SELECT user_id, created_at FROM photo_tags
)

SELECT username, tags.created_at 
FROM users
JOIN tags ON tags.user_id = users.id
WHERE tags.created_at > '2010-01-01'
