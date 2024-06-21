# BTC1855H CODING IN R LANGUAGE
# ASSIGNMENT TWO 
# Version 2023.03.1+446

## MG: I tried running the entire script with correct and incorrect examples 
##     (non-numeric, non 3 digit, negative numbers), and your code always 
##     return the appropriate responses, great job!

## MG: Its nice that you include a space after the colon so entering the input
##     seems seamless!
answer <- readline(prompt = "Please enter a three digit positive number: ")

## MG: Great explanation of the readline() function!
# readline() function converts all input as strings, must convert to numeric
answer <- as.numeric(answer)


## MG: I think using this initial loop is a brilliant idea so that the script
##     doesn't continue if the user entered a non-numeric input! 
## MG: Using the stop() function also makes the message in red, which sticks out
##     and enables readability!
#' Check if input is NA
#' If NA, the input was not a number
#' Stop the code if input is not a number so that it doesn't 
#' continue to the next checks
if(is.na(answer)){
  stop("Entry is not a number.")
} 

## MG: Having the next if condition to check the correctness of the input flows
##     well with your previous if statement. I think its really smart to check 
##     whether the answer is a the three digit number using the range and the or
##     logical operator (||).

## MG: One suggestion is that using the else if statement where answer < 100, 
##     might make the first if(answer <0) seems redundant. Although, I understand
##     that you are separating them to generate a clearer error output. But, you
##     can consider combining them into one!

#' If number passed last check, it will now check whether it is positive and three digits
#' If it doesn't pass, the code will stop running and not continue to the next check
if(answer < 0) {
  stop(paste(answer,"is not a positive number."))
} else if(answer < 100 || answer > 999) {
  stop(paste(answer,"is not a three digit number."))
} else {
  print("Entry is a valid number.")
}

## MG: The logic for your next four lines of codes makes sense and works great!
##     There is another way you can get the arm_digits without using the double
##     square brackets [[]] by using unlist() instead. I've included it below.
#' If number passed last check, it will now check if it is an armstrong number
#' Convert number into a string so that we can separate the digits
arm_number <- as.character(answer)

#' Split the digits using strsplit() and convert to integers so we can do operations
## MG: Alternative approach:
##     arm_digits <- as.integer(unlist(strsplit(arm_number, "")))
arm_digits <-  as.integer(strsplit(arm_number, "")[[1]])

# Cube each individual digit
arm_cubed <- arm_digits^3

# Sum all the cubed digits together
sum_digits <- sum(arm_cubed)

## MG: Great use of the if and else statements here!
# Check if entry is an armstrong number
if(sum_digits != answer){
  print(paste(answer,"is not an armstrong number."))
} else {
  print(paste(answer,"is an armstrong number! :)"))
}

## Final comment
## MG: Your code is very clear, easy to understand, and flows really well, great
##     job! One final suggestion is you could include comments on each line for
##     the if conditions so that you can easily see what they will do!
