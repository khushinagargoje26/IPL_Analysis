#Calculate the average runs scored per match in the 2017 season.
SELECT AVG(total_runs) AS avg_runs 
FROM (
    SELECT match_id, sum(total_runs) AS total_runs 
    FROM deliveries 
    GROUP BY match_id
) AS match_totals 
JOIN matches ON match_totals.match_id = matches.id
WHERE matches.season = 2017;
