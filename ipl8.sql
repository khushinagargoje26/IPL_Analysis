#Find the batsman who has hit the most sixes in the 2017 season.
SELECT 
    batsman, COUNT(*) AS sixes
FROM
    deliveries
        JOIN
    matches ON deliveries.match_id = matches.id
WHERE
    season = '2017'
GROUP BY batsman
ORDER BY sixes DESC
LIMIT 1;