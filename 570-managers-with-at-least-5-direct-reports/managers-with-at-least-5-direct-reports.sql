# Write your MySQL query statement below
SELECT name
FROM Employee as e2
JOIN (SELECT Employee.managerId, COUNT(Employee.managerId) as direct_report_count FROM Employee GROUP BY Employee.managerId)as e ON e2.id = e.managerId
WHERE e.direct_report_count >=5







