QUERIE 1-- Show all deliveries where Chennai Super Kings is batting

SELECT *
FROM IPL
WHERE batting_team = 'Chennai Super Kings';

QUERIE 2--Count matches played by each batting team

SELECT batting_team,
COUNT(DISTINCT match_id) AS total_matches
FROM IPL
GROUP BY batting_team;

QUERIE 3-- Display top 10 batters by total runs

SELECT batter,
SUM(batter_runs) AS total_runs
FROM IPL
GROUP BY batter
ORDER BY total_runs DESC
LIMIT 10;

QUERIE 4-- Show batters with more than 1000 runs

SELECT batter,
SUM(batter_runs) AS total_runs
FROM IPL
GROUP BY batter
HAVING SUM(batter_runs) > 1000;

QUERIE 5-- Show matches played between 2018 and 2020

SELECT match_id,
date,
batting_team,
bowling_team
FROM IPL
WHERE year BETWEEN 2018 AND 2020;


QUERIE 6---- Show teams with the highest total runs

SELECT batting_team,
COUNT(DISTINCT match_id) AS matches_played,
SUM(total_runs) AS total_runs,
AVG(total_runs) AS average_runs
FROM IPL
GROUP BY batting_team
HAVING SUM(total_runs) > 5000
ORDER BY total_runs DESC;