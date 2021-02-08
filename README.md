## Project - MLB Hall of Fame
>
>This project consists of creating a database composed of Major League Baseball (mlb) historical data. It includes the yearly pitching and batting statistics of every player that ever played the game, going back to the 1800’s. From this data, we will extract all of the players that were inducted in the MLB Hall of Fame in Cooperstown, NY. This data will be housed in separate batting and pitching tables with career stats for each of the players. There is a unique id included in the master player table that links back to another dataset (retrosheet.org not included due to time restraints) that can drill down to game by game stats for each player.
This data can be used in several ways:
1.	Can be used to validate the performances of the inductee’s vs. all of the other players that have played the game. Comparing in this way can tell us if there are players in the Hall that shouldn’t be. And probably more importantly, tell us which players that aren’t inducted that should be. (The obvious exceptions not accounted for here are the players not inducted for conduct violations; ie. Steroid use and gambling).
2.	Since players are voted in by members of the Baseball Writers of America (BBWA), this data can also serve as a guideline to help them who is deserving based on their performance. They will be able to look at active players stats and determine their likelihood of being inducted once they retire (There is a 5 year waiting period post retirement before a player is eligible.)
3.	Players agents can also use data of this type for active players they are representing. If a player early in his career is on pace to put up hall of fame worthy numbers, the agent will have greater leverage to bargain with over the players salary.
>
### Source of Data
>
>The data we used consists of multiple csv files taken from a large, well-known baseball stats repository titled Lahman’s Baseball Database. http://www.seanlahman.com/baseball-archive/statistics/
 There are many contributors to this data. The Society of American Baseball Research (SABR.org) and its member’s have been key contributors to this data-gathering effort.
We have used the following for our project:
>   - People.csv: contains all of the demographic data for all players. The  playerID field is used to join this table with all other tables in the database.
>   - Batting.csv: contains extensive stats for all batters by year played. 
>   - Pitching.csv: contains extensive stats for all pitchers by year played.
>   - HallOfFame.csv: contains all hall of fame voting info. Includes year by year breakdown of all of the players that were on each years ballots (includes players not voted in) as well as the number of votes received.  

### Data Cleanup & Analysis
>
>Of the above data sources originally used, only the HallOfFame.csv was not stored in its original form. The other 3 were stored as is for further analysis. The final list of tables to be used in the production database include the following tables:
>
>   - People: All player demographics
>   - Hof_inductees: playerID and the year they were inducted
Use the HallOfFame.csv as this source. Eliminated all of the players that were on the ballots but not inducted. Since this data will be used to get all of the yearly stats in the batting and pitching tables, we only kept the playerID’s of the inductees and the year they were inducted. This dataframe was also used as a python list to filter the other stat tables.
>   - Batting: All yearly batting stats for all players
This was already clean and no further manipulating was required. It was directly loaded in the batting table.
>   - Career_hof_bat: Career batting stats for HOF players
This table required several filters and groupings to get it into its final form ready to be loaded into the database. 
1.	 we used the python list from above to get only the hof-er’s playerID’s. We used this list to filter out only inductees.
2.	Since the original batting csv contained and extensive set of player stats, we only included the primary basic stats in this table.
3.	Once we had all of the yearly basic stats, we summed up all of the yearly stats into their overall career stats (one record per player). These career stats were validated by spot-checking with the career stats found on mlb.com. 
>   - Pitching:  All yearly pitching stats for all players
This was already clean and no further manipulating was required. It was directly loaded in the pitching table.
>   - Career_hof_pitch: Career pitching stats for HOF pitchers
The process for this table followed the steps required for the corresponding batting table… It required several filters and groupings to get it into its final form ready to be loaded into the database. 
1.	 we used the python list from above to get only the hof-er’s playerID’s. We used this list to filter out only inductees.
2.	Since the original pitching csv contained and extensive set of player stats, we only included the primary basic stats in this table.
3.	Once we had all of the yearly basic stats, we summed up all of the yearly stats into their overall career stats (one record per player). These career stats were validated by spot-checking with the career stats found on mlb.com. 



