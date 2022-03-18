WITH cte AS (
	SELECT id, email, ROW_NUMBER() OVER (PARTITION BY email ORDER BY id) row_num
	FROM Person p
)

DELETE FROM Person WHERE id IN (SELECT id FROM cte WHERE row_num > 1)
