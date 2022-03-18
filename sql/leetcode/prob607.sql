SELECT SP.name
FROM SalesPerson SP
FULL OUTER JOIN(
	    SELECT O.order_id, O.com_id, O.sales_id, Tbl1.name
	    FROM Orders O
	    RIGHT JOIN (
		        SELECT *
			        FROM Company
				        WHERE name = 'RED'
					        ) Tbl1
						    ON O.com_id = Tbl1.com_id 
						    ) AS Tbl2
						ON SP.sales_id = Tbl2.sales_id
						WHERE Tbl2.name IS NULL
