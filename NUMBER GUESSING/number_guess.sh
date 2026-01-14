#!/bin/bash
PSQL="psql --username=freecodecamp --dbname=scoredb -t --no-align -c"

# 22 in length
echo "Enter your username:"
read USERNAME

LOOP_GAME() { 
  read GUESSED_NUMBER
  if [[ $GUESSED_NUMBER =~ ^[0-9]+$ ]]
    then
      if (( $GUESSED_NUMBER == $1 ))
      then
        echo "You guessed it in $2 tries. The secret number was $1. Nice job!"
        INSERT_SCORE=$($PSQL "INSERT INTO scores(username, guesses_taken) VALUES ('$3', $2);")
        exit
      else 
        if (( $GUESSED_NUMBER > $1 ))
        then 
          echo "It's lower than that, guess again:"
        else 
          echo "It's higher than that, guess again:"
        fi
        LOOP_GAME $1 $(($2 + 1)) $3
      fi
    else
      echo "That is not an integer, guess again:"  
    fi  
}

# Search for Username
FOUND_RESULT=$($PSQL "SELECT * FROM scores WHERE username='$USERNAME';")
if [[ -z $FOUND_RESULT ]]
then
  echo Welcome, $USERNAME! It looks like this is your first time here.
else 
  GAMES_PLAYED=$($PSQL "SELECT COUNT(*) FROM scores WHERE username='$USERNAME';")
  BEST_GUESS=$($PSQL "SELECT MIN(guesses_taken) FROM scores WHERE username='$USERNAME';")
  echo Welcome back, $USERNAME! You have played $GAMES_PLAYED games, and your best game took $BEST_GUESS guesses.
fi


RANDOM_NUMBER=$((1 + $RANDOM % 1000))
echo Guess the secret number between 1 and 1000:
LOOP_GAME $RANDOM_NUMBER 1 $USERNAME

