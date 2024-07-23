#List the top 3 players who have won the most 'Player of the Match' awards.
select player_of_match , count(*) as awards 
from matches 
group by player_of_match 
order by awards  desc limit 3 ;