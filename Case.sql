
-- Task 1: Identify intervals of consecutive numbers.
WITH t1 AS (
    SELECT a,
           ROW_NUMBER() OVER (ORDER BY a),
           a - ROW_NUMBER() OVER (ORDER BY a) AS Diff
    FROM numbers
)
SELECT MIN(a) AS start,
       MAX(a) AS end
FROM t1
GROUP BY Diff
ORDER BY start;


-- Task 2: Calculate the average quantity of each product per order.
WITH t1 AS (
    SELECT good_id,
           SUM(COALESCE(amount, 1))::numeric / COUNT(*)
    FROM orders o
    GROUP BY good_id
)
SELECT *
FROM t1
RIGHT JOIN goods g
    ON t1.good_id = g.id;


-- Task 3: Identify employees and dates when their time
-- at the workplace was less than eight hours.
SELECT employee,
       DATE(check_time),
       MAX(check_time) - MIN(check_time) AS Diff
FROM gate
GROUP BY employee, DATE(check_time)
HAVING MAX(check_time) - MIN(check_time) < INTERVAL '8 hours';
