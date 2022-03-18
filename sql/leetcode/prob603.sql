SELECT tbl.seat_id
FROM (
	SELECT
		CASE 
			WHEN LEAD(free) OVER(ORDER BY seat_id) = 1 AND free <> 0
			OR LAG(free) OVER(ORDER BY seat_id) = 1 AND free <> 0
				THEN seat_id
				ELSE 0
			END seat_id
	FROM Cinema
	) AS Tbl
WHERE Tbl.seat_id <> 0
