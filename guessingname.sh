
function question_num {
  echo "How many files are in the current directory?"
  read response
  echo "You entered: $response"
}

num_files=$(ls | wc -l)
question_num
attempt=$response

while [[ $attempt -ne $num_files ]]
do
  if [[ $attempt -lt 0 ]]
  then 
    echo "The number should be greater than 0 or equal to zero. Let's retry !"
  else
    echo "You don't guessed the number. I try to give you some advice. Let's retry !"
    if [[ $attempt -gt $num_files-5 ]] && [[ $attempt -lt $num_files+5 ]]
    then
      echo "You are in the right interval. The solution is near."
      if [[ $attempt -lt $num_files+5 ]] && [[ $attempt -gt $num_files ]]
      then
        echo "Try something a bit smaller."
      elif [[ $attempt -gt $num_files-5 ]] && [[ $attempt -lt $num_files ]]
      then
        echo "Try something a bit bigger."
      fi
    else
      echo "You are out of range."
      if [[ $attempt -gt $num_files ]]
      then
        echo "Your number is too big, try a smaller one."
      else
        echo "Your number is too small, try a bigger one."
      fi
    fi

  fi
  
  question_num
  attempt=$response
  
done

echo "That's great, you have guessed !"


