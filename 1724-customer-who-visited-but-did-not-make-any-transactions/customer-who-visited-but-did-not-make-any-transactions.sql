/* Write your T-SQL query statement below */
SELECT Visits.customer_id, COUNT(*) as count_no_trans
FROM Visits
WHERE visit_id not in (SELECT visit_id FROM Transactions)
GROUP BY customer_id;
