# Assignment Name: Numbers
# Name: Papiha Joharapurkar
# Date: June 14 2022
# Class: Special Topics
##outline plan instructions

# Prompt the user to enter a three digit positive number
input_number <- readline(prompt = "Enter a 3 digit positive number: ")

# Check if the user input is numeric. If not, print an error message and quit.
input_number <- as.numeric(input_number)

if (is.na(input_number) | ((nchar(as.character(input_number))) != 3) | ((input_number >= 0) == F)) {
  print ("Error. Quitting Program")
} else {
  input_number_character <- as.character(input_number)
  input_number_character <- strsplit(input_number_character, split = "")
  input_digit_hundred <- as.numeric(input_number_character[[1]][1])
  input_digit_ten <- as.numeric(input_number_character[[1]][2])
  input_digit_one <- as.numeric(input_number_character[[1]][3])
  
  sum_of_digits <- (input_digit_hundred ^3) + (input_digit_ten ^3) + (input_digit_one ^3)
  
  if ((sum_of_digits == input_number)) {
    print(paste(input_number, "is a Narcissistic number!"))
  } else {
    print(paste(input_number, "is not a N number"))
  }
  
}


# Check if the number is narcissistic.
# First subset number into individual digits
# Then evaluate whether sum of cube of digits is equal to original number 

