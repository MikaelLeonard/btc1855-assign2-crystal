# BTC1855H CODING IN R LANGUAGE
# ASSIGNMENT TWO 
# Version 2023.03.1+446


#' Prompt the user to enter a three digit positive number
#' Check if the user input is numeric. If not, print an error message and quit.
#' Check if the number is narcissistic. A narcissistic number, or
#' an Armstrong number, is a number that is equal to the sum of the cubes of 
#' its own digits. 153, 370, 371, 407 are three digit Armstrong numbers.
#' Display the result with an appropriate message, e.g. “127 is not an Armstrong 
#' number” or “370 is a narcissistic number” or any additional fun text you may 
#' want to add.

answer <- readline(prompt = "Please enter a three digit positive number: ")

# readline() function inputs characters as strings, must convert input to numeric
answer <- as.numeric(answer)

# if input is NA, the input was not numeric
if(is.na(answer) == T){
  stop("Entry is not a number.")
} 

if(answer < 0) {
  stop(paste(answer,"is not a positive number."))
} else if(answer < 100 || answer > 999) {
  stop(paste(answer,"is not a three digit number."))
} else {
  print("Entry is a valid number.")
}

# convert number into a string so that we can separate the digits
arm_number <- as.character(answer)
#' explain why it's integers
#' split the number into its digits
arm_digits <-  as.integer(strsplit(arm_number, "")[[1]])
# cube the individal digits
arm_cubed <- arm_digits^3
sum_digits <- sum(arm_cubed)

# check if entry is an armstrong number
if(sum_digits != answer){
  print(paste(answer,"is not an armstrong number."))
} else {
  print(paste(answer,"is an armstrong number! :)"))
}