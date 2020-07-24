#This function returns a number from a string
returnNum(){
  stringToParse="$1"
  numToReturn="${stringToParse//[!0-9]/}"
  return $numToReturn 
}
#This function returns the largest number of two passed into it.
returnLargestNum(){
  if [[ $1 -gt $2 ]]
  then
	  return $1
  else
	  return $2
  fi
}


six=$(curl "http://numbersapi.com/6/math")
echo "This is the response from the api:"
echo "$six"
returnNum "$six"
sixNum=$?
echo "This is the number after it is parsed from the string: $sixNum"

five=$(curl "http://numbersapi.com/5/math")
echo "This is the resposne from the api:"
echo "$five"

returnNum "$five"
fiveNum=$?

echo "This is the number after it is parsed from the string: $fiveNum"

returnLargestNum $sixNum $fiveNum
largestNum=$?
echo "This is the largest number $largestNum"
