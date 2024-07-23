#Calculate the win percentage of each team in the 2019 season.
SELECT team, (CAST(wins AS FLOAT) / total_matches) * 100 AS win_percentage
FROM (
    SELECT team, COUNT(*) AS total_matches,
           SUM(CASE WHEN winner = team THEN 1 ELSE 0 END) AS wins
    FROM (
        SELECT team1 AS team FROM matches WHERE season = 2019
        UNION ALL
        SELECT team2 AS team FROM matches WHERE season = 2019
    ) AS all_matches
    JOIN matches ON all_matches.team IN (matches.team1, matches.team2)
    GROUP BY team
) AS team_stats
ORDER BY win_percentage DESC;

