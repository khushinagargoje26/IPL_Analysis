#Player with the Highest Number of Catches as a Fielder in 2019
SELECT 
    fielder,
    COUNT(*) AS catches
FROM 
    deliveries
JOIN 
    matches ON deliveries.match_id = matches.id
WHERE 
    matches.season = 2019
    AND dismissal_kind = 'caught'
GROUP BY 
    fielder
ORDER BY 
    catches DESC
LIMIT 1;
