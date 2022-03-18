SELECT Tbl1.project_id
FROM (
	    SELECT P.project_id, RANK() OVER(ORDER BY COUNT(*) DESC) rank
	    FROM Project p
	    JOIN Employee E
	    ON P.employee_id = E.employee_id
	    GROUP BY P.project_id
) Tbl1
WHERE rank = 1
