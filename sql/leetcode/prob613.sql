SELECT MIN(distance) shortest
FROM (
	    SELECT P1.x x1, P2.x x2, ABS(P1.x - P2.x) distance
	    FROM Point P1 
	    CROSS JOIN Point P2
) AS Tbl
Where distance <> 0
