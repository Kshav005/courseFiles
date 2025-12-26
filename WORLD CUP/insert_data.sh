#! /bin/bash

if [[ $1 == "test" ]]
then
  PSQL="psql --username=postgres --dbname=worldcuptest -t --no-align -c"
else
  PSQL="psql --username=freecodecamp --dbname=worldcup -t --no-align -c"
fi


# Do not change code above this line. Use the PSQL variable above to query your database.
cat games.csv | while IFS="," read YEAR ROUND WINNER OPPONENT WINNER_GOALS OPPONENT_GOALS
do
if [[ $WINNER != 'winner' ]] # removes header from csv
then
    # Start by getting winning team name
  WINNING_TEAM_NAME=$($PSQL "SELECT name FROM teams WHERE name='$WINNER'")
  if [[ -z $WINNING_TEAM_NAME ]]
  then
    echo INSERT_WINNING_NAME=$($PSQL "INSERT INTO teams(name) VALUES('$WINNER')")
    if [[ $INSERT_WINNING_NAME == "INSERT 0 1" ]]
    then
      echo Inserted $WINNER
    fi
  fi      
  LOSING_TEAM_NAME=$($PSQL "SELECT name FROM teams WHERE name='$OPPONENT'")
  if [[ -z $LOSING_TEAM_NAME ]]
    then
      echo INSERT_LOSING_NAME=$($PSQL "INSERT INTO teams(name) VALUES('$OPPONENT')")
      if [[ $INSERT_LOSING_NAME == "INSERT 0 1" ]]
      then
        echo Inserted $OPPONENT
      fi
  fi      
  WINNER_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$WINNER'")
  OPPONENT_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$OPPONENT'")
  echo $($PSQL "INSERT INTO games(year, round, winner_id, opponent_id, winner_goals, opponent_goals) VALUES ($YEAR, '$ROUND', $WINNER_ID, $OPPONENT_ID, $WINNER_GOALS, $OPPONENT_GOALS);")

  # echo INSERT_GAME=$($PSQL "INSERT INTO games(year, round, winner_id, opponent_id, winner_goals, opponent_goals) VALUES ($YEAR, '$ROUND', $WINNER_ID, $OPPONENT_ID, $WINNER_GOALS, $OPPONENT_GOALS)")
fi
done