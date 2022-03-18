SELECT MAX(Tbl1.num) num
FROM (
	    SELECT num
	    FROM MyNumbers
	    GROUP BY num
	    HAVING COUNT(*) = 1
	    ) Tbl1
