WITH cte AS (
    SELECT customer_number, COUNT(order_number) AS numord
    FROM orders
    GROUP BY customer_number
)
SELECT customer_number
FROM cte
WHERE numord = (SELECT MAX(numord) FROM cte);
