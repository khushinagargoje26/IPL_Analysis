#Calculate the win percentage of teams that won the toss and chose to bat first in the 2019 season.
select (cast(wins as float )/ total_matches) * 100 as win_percentage from 
(select count(*) as total_matches ,
sum(case when winner = toss_winner then 1 else 0 end ) as wins
from matches where season=2019 and toss_decision='bat') as stats
