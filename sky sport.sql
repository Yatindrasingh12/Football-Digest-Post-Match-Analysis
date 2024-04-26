# solution of skysports table questions
show tables;
#Q.1 Import both the .CSV files in Dbeaver under the database name Sky_Sports 
select * from sql_skysports_project16875987301;
select * from sql_skysports_project16875987300;

#Q.2 Write an sql query to show all the UNIQUE team names 
select distinct team from sql_skysports_project16875987300; 

#Q.3 Write an SQL query to show name of team which has rank 1 from group 7
select * from sql_skysports_project16875987300 where `rank`=1 and `group`=7;

#Q.4 Write an sql query to show count of all teams 
select count(team) from sql_skysports_project16875987300;

#Q.5 Write an SQL query to show matches_played by each team 
select team, matches_played from sql_skysports_project16875987300;  

#Q.6 Write an SQL query to show team, percent of wins with respect to matches_played by each team and name the resulting column as wins_percent 
select team, matches_played, wins/matches_played*100 as wins_percent from sql_skysports_project16875987300;

#Q.7 Write an SQL query to show which team has maximum goals_scored and their count
select team, goals_scored from sql_skysports_project16875987300
where goals_scored= (select max(goals_scored) from sql_skysports_project16875987300); 

#Q.8 Write an SQL query to show percent of draws with respect to matches_played round of to 2 digits by each team 
select team, matches_played, round(draws/matches_played*100,2) as draws_percent from sql_skysports_project16875987300;

#Q.9 Write an SQL query to show which team has minimum goals_scored and their count 
select team, goals_scored from sql_skysports_project16875987300
where goals_scored= (select min(goals_scored) from sql_skysports_project16875987300); 

#Q.10 Write an SQL query to show percent of losses with respect to matches_played by each team in ascending order by losses and name the resulting column_as losses_percent 
select team, matches_played, losses/matches_played*100 as losses_percent from sql_skysports_project16875987300 order by losses_percent asc;

#Q.11 Write an SQL query to show the average goal_difference
select avg(goal_difference) from sql_skysports_project16875987300;   

#Q.12 Write an SQL query to show name of the team where points are 0 
select team,points from sql_skysports_project16875987300 where points=0;

#Q.13 Write a SQL query to show all data where expected_goal_scored is less than exp_goal_conceded 
select * from sql_skysports_project16875987300 where expected_goal_scored<exp_goal_conceded; 

#Q.14 Write an SQL query to show data where exp_goal_difference is in between -0.5 and 0.5 
select * from sql_skysports_project16875987300 where exp_goal_difference between -0.5 and 0.5;

#Q.15 Write an SQL query to show all data in ascending order by exp_goal_difference_per_90
select * from sql_skysports_project16875987300 order by exp_goal_difference_per_90 asc;

#Q.16 Write an SQL query to show team which has maximum number of players_used 
select team, players_used  from sql_skysports_project16875987301
where players_used=(select max(players_used) from sql_skysports_project16875987301);