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

#Q.17 Write an SQL query to show each team name and avg_age in ascending order by avg_age 
select team, avg_age from sql_skysports_project16875987301 order by avg_age asc; 

#Q.18 Write an sql query to show average possession of teams 
select avg(possession) from sql_skysports_project16875987301; 

#Q.19 Write a SQL query to show team which has played atleast 5 games
select team, games from sql_skysports_project16875987301 where games>=5;

#Q.20 Write an SQL query to show all data for which minutes is greater than 600      
select * from sql_skysports_project16875987301 where minutes>600;

#Q.21 Write an SQL query to show team, goals, assists in ascending order by goals
select team, goals, assists from sql_skysports_project16875987301 order by goals asc;

#Q.22 Write an SQL query to show team, pens_made, pens_att in descending order by pens_made
select team, pens_made, pens_att from sql_skysports_project16875987301 order by pens_made desc;

#Q.23 Write an SQL query to show team, cards_yellow, cards_red where cards_red is equal to 1 in ascending order by cards_yellow
select team, cards_yellow, cards_red from sql_skysports_project16875987301 where cards_red=1 order by cards_yellow asc; 

#Q.24 Write an SQL query to show team, goals_per90, assists_per90, goals_assists_per90 in descending order by goals_assists_per90 
select team, goals_per90, assists_per90, goals_assists_per90 from sql_skysports_project16875987301 order by goals_assists_per90 desc; 

#Q.25 Write an SQL query to show team, goals_pens_per90,goals_assists_pens_per90 in ascending order by goals_assists_pens_per90 
select team, goals_pens_per90,goals_assists_pens_per90 from sql_skysports_project16875987301 order by goals_assists_pens_per90 asc; 

#Q.26 Write an SQL query to show team, shots, shots_on_target, shots_on_target_pct where shots_on_target_pct is less than 30 in ascending order by shots_on_target_pct 
select team, shots, shots_on_target, shots_on_target_pct from sql_skysports_project16875987301 where shots_on_target_pct<30 order by shots_on_target_pct asc; 

#Q.27 Write an SQL query to show team, shots_per90, shots_on_target_per90 for team Belgium 
select team, shots_per90, shots_on_target_per90 from sql_skysports_project16875987301 where team='belgium';

#Q.28 Write an SQL query to show team, goals_per_shot, goals_per_shot_on_target, average_shot_distance in descending order by average_shot_distance 
select team, goals_per_shot, goals_per_shot_on_target, average_shot_distance from sql_skysports_project16875987301 order by average_shot_distance desc;

#Q.29 Write an SQL query to show team, errors, touches for which errors is 0 and touches is less than 1500 
select team, errors, touches from sql_skysports_project16875987301 where errors=0 and touches<1500;

#Q.30 Write an SQL query to show team, fouls which has maximum number of fouls 
select team, fouls from sql_skysports_project16875987301 where fouls=(select max(fouls) from sql_skysports_project16875987301);

#Q.31 Write an SQL query to show team, offisdes which has offsides less than 10 or greater than 20
select team, offsides from sql_skysports_project16875987301 where offsides<10 or offsides>10;

#Q.32 Write an SQL query to show team, aerials_won, aerials_lost, aerials_won_pct in descending order by aerials_won_pct 
select team, aerials_won, aerials_lost, aerials_won_pct from sql_skysports_project16875987301 order by aerials_won_pct desc;

#Q.33 Write an SQL query to show number of teams each group has! 
select `group`,count(team) from sql_skysports_project16875987300 where team in (select team from sql_skysports_project16875987300) group by `group`;
 
#Q.34 Write a SQL query to show team names group 6 has
select team from sql_skysports_project16875987300 where `group`=6;

#Q.35 Write an SQL query to show Australia belongs to which group
select team,`group` from sql_skysports_project16875987300 where team='australia';

#Q.36 Write an SQL query to show group, average wins by each group
select `group`,avg(wins) from sql_skysports_project16875987300 where wins in (select wins from sql_skysports_project16875987300) group by `group`;

#Q.37 Write an SQL query to show group, maximum expected_goal_scored by each group in ascending order by expected_goal_scored 
select `group`,max(expected_goal_scored) from sql_skysports_project16875987300 where
expected_goal_scored in (select expected_goal_scored from sql_skysports_project16875987300) group by `group` order by expected_goal_scored asc;

#Q.38 Write an SQL query to show group, minimum exp_goal_conceded by each group in descending order by exp_goal_conceded 
select `group`,min(exp_goal_conceded) from sql_skysports_project16875987300 where
exp_goal_conceded in (select exp_goal_conceded from sql_skysports_project16875987300) group by `group` order by exp_goal_conceded desc;

#Q.39 Write an SQL query to show group, average exp_goal_difference_per_90 for each group in ascending order by exp_goal_difference_per_90 
select `group`,avg(exp_goal_difference_per_90) from sql_skysports_project16875987300 where
exp_goal_difference_per_90  in (select exp_goal_difference_per_90 from sql_skysports_project16875987300) group by `group` order by exp_goal_difference_per_90  asc;
select exp_goal_conceded from sql_skysports_project16875987300;

#Q.40  Write an SQL query to show which team has equal number of goals_scored and goals_against 
select team from sql_skysports_project16875987300 where goals_scored=goals_against;

#Q.41 Write an SQL query to show which team has maximum players_used 
select max(players_used) from sql_skysports_project16875987301;
select team, players_used from sql_skysports_project16875987301 where players_used=(select max(players_used) from sql_skysports_project16875987301);

#Q.42 Write an SQL query to show team, players_used, avg_age, games, minutes where minutes lessthan 500 and greater than 200 
select  team, players_used, avg_age, games, minutes from sql_skysports_project16875987301 where minutes<500 and minutes>200;

#Q.43 Write an SQL query to show all data of group_stats in ascending order BY points 
select `group`, points from sql_skysports_project16875987300 order by points asc;

#Q.44 Write an SQL query to show ALL UNIQUE team in ascending order by team 
select distinct team from sql_skysports_project16875987300 order by team asc;

#Q.45 Write an SQL query to show average avg_age of each group and arrange it in descending order by avg_age. 
select sql_skysports_project16875987300.`group`, avg(sql_skysports_project16875987301.avg_age) from
sql_skysports_project16875987300 inner join sql_skysports_project16875987301 on 
sql_skysports_project16875987300.team=sql_skysports_project16875987301.team group by `group` order by avg_age desc;

#Q.46 Write an SQL query to show sum of fouls for each group and arrange it in ascending order by fouls. 
select sql_skysports_project16875987300.`group`, sum(sql_skysports_project16875987301.fouls) from
sql_skysports_project16875987300 inner join sql_skysports_project16875987301 on 
sql_skysports_project16875987300.team=sql_skysports_project16875987301.team group by `group` order by fouls asc;

#Q.47 Write an SQL query to show total number of games for each group and arrange it in descending order by games.
select sql_skysports_project16875987300.`group`, count(sql_skysports_project16875987301.games) from
sql_skysports_project16875987300 left join sql_skysports_project16875987301 on 
sql_skysports_project16875987300.team=sql_skysports_project16875987301.team group by `group` order by games desc;

#Q.48 Write an SQL query to show total number of players_used for each group and arrange it in ascending order by players_used.
select sql_skysports_project16875987300.`group`, count(sql_skysports_project16875987301.players_used) from
sql_skysports_project16875987300 left join sql_skysports_project16875987301 on 
sql_skysports_project16875987300.team=sql_skysports_project16875987301.team group by `group` order by players_used asc;

#Q.49 Write an SQL query to show total number of offsides for each group and arrange it in ascending order by offsides.
select sql_skysports_project16875987300.`group`, count(sql_skysports_project16875987301.offsides) from
sql_skysports_project16875987300 left join sql_skysports_project16875987301 on 
sql_skysports_project16875987300.team=sql_skysports_project16875987301.team group by `group` order by offsides asc;

#Q.50 Write an SQL query to show average passes_pct for each group and arrange it in descending order by passes_pct.
select sql_skysports_project16875987300.`group`, avg(sql_skysports_project16875987301.passes_pct) from
sql_skysports_project16875987300 left join sql_skysports_project16875987301 on 
sql_skysports_project16875987300.team=sql_skysports_project16875987301.team group by `group` order by passes_pct desc;

#Q.51 Write an SQL query to show average goals_per90 for each group and arrange it in ascending order by goals_per90. 
select sql_skysports_project16875987300.`group`, avg(sql_skysports_project16875987301.goals_per90) from
sql_skysports_project16875987300 left join sql_skysports_project16875987301 on 
sql_skysports_project16875987300.team=sql_skysports_project16875987301.team group by `group` order by goals_per90 desc;

