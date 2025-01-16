-- Who hit the most home runs in 2019, and what team did they play for?

SELECT players.first_name, players.last_name, MAX(stats.home_runs), teams.name
FROM stats
INNER JOIN players ON stats.player_id = players.id 
INNER JOIN teams ON stats.team_id = teams.id
WHERE teams.year = 2019
-- Expected result:
--
-- +---------------+------------+-----------+-----------+
-- | New York Mets | Pete       | Alonso    | 53        |
-- +---------------+------------+-----------+-----------+


