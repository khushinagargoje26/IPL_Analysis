#List the bowlers who have bowled the most number of overs.
SELECT bowler, COUNT(DISTINCT match_id, inning, overs) AS overs_bowled 
FROM deliveries 
GROUP BY bowler 
ORDER BY overs_bowled DESC;

