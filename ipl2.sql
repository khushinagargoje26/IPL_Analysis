#Find the top 5 batsmen who scored the most runs.
SELECT 
    batsman, sum(batsman_runs) AS top_batsmen
FROM
    deliveries
GROUP BY batsman
ORDER BY top_batsmen DESC
LIMIT 5;