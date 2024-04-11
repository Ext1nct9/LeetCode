# Write your MySQL query statement below

SELECT Signups.user_id, ROUND(ifnull(AVG(action='confirmed'),0),2) as confirmation_rate
FROM Signups
Left Join Confirmations ON Signups.user_id = Confirmations.user_id
GROUP BY Signups.user_id
