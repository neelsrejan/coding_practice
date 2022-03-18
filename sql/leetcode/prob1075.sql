SELECT P.project_id, ROUND(AVG(CAST(E.experience_years AS NUMERIC)),2) average_years
FROM Project P
JOIN Employee E
ON P.employee_id = E.employee_id
GROUP BY project_id
