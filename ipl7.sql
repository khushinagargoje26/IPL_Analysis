#Find the highest individual score by a batsman in a single match.

SELECT 
    batsman, match_id, MAX(total_run) AS highest_score
FROM
    (SELECT 
        batsman, match_id, SUM(batsman_runs) AS total_run
    FROM
        deliveries
    GROUP BY batsman , match_id) AS individual_score
GROUP BY batsman , match_id
ORDER BY highest_score DESC
LIMIT 1;
