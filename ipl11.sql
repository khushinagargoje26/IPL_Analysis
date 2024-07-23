#Calculate the strike rate for each batsman who scored at least 100 runs in the 2019 season
SELECT 
    batsman,
    total_runs,
    balls_faced,
    (total_runs / CAST(balls_faced AS FLOAT)) * 100 AS strike_rate
FROM (
    SELECT 
        batsman, 
        SUM(batsman_runs) AS total_runs,
        COUNT(*) AS balls_faced
    FROM 
        deliveries
    JOIN 
        matches ON deliveries.match_id = matches.id
    WHERE 
        matches.season = 2019 GROUP BY batsman
    HAVING 
        SUM(batsman_runs) >= 100) AS batsman_stats
ORDER BY 
    strike_rate DESC;
