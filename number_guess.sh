#!/bin/bash

# A number guessing game where users try to guess a random number in the fewest number of guesses possible

PSQL="psql --username=freecodecamp --dbname=number_guess -t -c"

# Generate a random number between 1 and 1000 using built-in $RANDOM
NUMBER=$(((RANDOM % 1000) + 1))

# Prompt user for username
echo Enter your username:
read USERNAME

# Check that username is <= 22 chars
N=${#USERNAME}

if [[ $N -gt 22 ]]; then
  echo "Invalid: username cannot be more than 22 characters long."
else
  # Check if user exists
  USER_EXISTS=$($PSQL "SELECT * FROM users WHERE username = '$USERNAME'")

  # If user not found
  if [[ ! $USER_EXISTS ]]; then
    echo "Welcome, $USERNAME! It looks like this is your first time here."
    # Create and insert new user
    INSERT_USER=$($PSQL "INSERT INTO users(username, games_played) VALUES('$USERNAME', 0)")
  else
    # Get best game
    BEST_GAME=$($PSQL "SELECT best_game FROM users WHERE username='$USERNAME'")
    # Get games played
    GAMES_PLAYED=$($PSQL "SELECT games_played FROM users WHERE username='$USERNAME'")
    # Welcome user
    echo "Welcome back, $USERNAME! You have played $(echo $GAMES_PLAYED) games, and your best game took $(echo $BEST_GAME) guesses."
  fi

  # Prompt for a guess
  echo "Guess the secret number between 1 and 1000:"
  read GUESS
  
  # If guess is invalid
  if [[ ! $GUESS =~ ^[0-9]{1,4}$ ]]; then
    # Return invalid guess error and prompt for another guess
    echo "That is not an integer, guess again:"
    read GUESS
    fi

  NUMBER_OF_GUESSES=0
  while [[ $GUESS != $NUMBER ]]; do
      # Increment guess counter
      ((NUMBER_OF_GUESSES += 1))

      if [[ $GUESS -lt $NUMBER ]]; then
        echo "It's higher than that, guess again: "
        read GUESS
      elif [[ $GUESS -gt $NUMBER ]]; then
        echo "It's lower than that, guess again: "
        read GUESS
      fi
  done

  # Increment guesses with final guess
  ((NUMBER_OF_GUESSES += 1))
  echo "You guessed it in $NUMBER_OF_GUESSES tries. The secret number was $NUMBER. Nice job!"

  INCREMENT_GAMES_PLAYED=$($PSQL "UPDATE users SET games_played=($GAMES_PLAYED + 1) WHERE username='$USERNAME'")

  if [[ $NUMBER_OF_GUESSES -lt $BEST_GAME || !$BEST_GAME ]]
  then
    # Update best game
    UPDATE_BEST_GAME=$($PSQL "UPDATE users SET best_game=$NUMBER_OF_GUESSES WHERE username='$USERNAME'")
  fi

fi
