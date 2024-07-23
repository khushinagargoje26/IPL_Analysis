#Find the player who has been dismissed the most times.
SELECT player_dismissed, COUNT(*) AS dismissals 
FROM deliveries 
WHERE player_dismissed IS NOT NULL 
GROUP BY player_dismissed 
ORDER BY dismissals DESC 
LIMIT 1;

