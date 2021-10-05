-- create view
CREATE VIEW tags AS (
	SELECT id, created_at, user_id, post_id, 'photo_tag' AS type FROM photo_tags
	UNION ALL
	SELECT id, created_at, user_id, post_id, 'caption_tag' AS type FROM caption_tags
)

-- execute
SELECT *
FROM tags 