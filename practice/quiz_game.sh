#!/bin/bash

# Define the questions, options, and correct answers
questions=("What is the capital of France?" 
           "What is 2 + 2?" 
           "Which planet is known as the Red Planet?" 
           "Who wrote 'To Kill a Mockingbird'?" 
           "What is the chemical symbol for water?")
options=("1) Paris  2) Rome  3) Berlin  4) Madrid"
         "1) 3  2) 4  3) 5  4) 6"
         "1) Earth  2) Venus  3) Mars  4) Jupiter"
         "1) J.K. Rowling  2) Harper Lee  3) George Orwell  4) Mark Twain"
         "1) O2  2) H2O  3) CO2  4) NaCl")
answers=(1 2 3 2 2)

# Initialize the score
score=0

# Function to ask questions
ask_question() {
  local question=$1
  local options=$2
  local correct_answer=$3

  echo "$question"
  echo "$options"
  read -p "Your answer (1-4): " user_answer

  if [ "$user_answer" -eq "$correct_answer" ]; then
    echo "Correct!"
    ((score++))
  else
    echo "Wrong! The correct answer was option $correct_answer."
  fi
  echo ""
}

# Main game loop
for i in "${!questions[@]}"; do
  ask_question "${questions[$i]}" "${options[$i]}" "${answers[$i]}"
done

# Display the final score
echo "Quiz completed! Your final score is: $score/${#questions[@]}"
