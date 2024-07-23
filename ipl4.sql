#Find the total number of boundaries (fours and sixes) hit in the 2017 season.
SELECT 
    COUNT(*) AS total_boundries
FROM
    deliveries
        JOIN
    matches ON deliveries.match_id = matches.id
WHERE
    matches.season = '2017'
        AND (batsman_runs = 4 OR batsman_runs = 6);