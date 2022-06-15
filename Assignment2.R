# Assignment Name: Numbers
# Name: Papiha Joharapurkar
# Date: June 14 2022
# Class: Special Topics

# Prompt the user to enter a three digit positive number
input_number <- readline(prompt = "Enter a 3 digit positive number: ")

## Deweena: I think that putting comments above the code line is helpful
## It would help me understand which code is doing what.
## Maybe the commentary below can go above - that whay you may not need to put 
## commentary on the side of the code

# Check if the user input is numeric. If not, print an error message and quit.
# Also checking whether user input is 3-digit and a positive number
# If the number fulfills these conditions, checking whether the number is narcissistic.
# Separating string into individual digits with strsplit function 
# After, am selecting for the individual digits with subsetting 
# After, evaluating whether of cube of digits is equal to original number 
# Finally, printing message on whether number is narcissistic or not with including the number

input_number <- as.numeric(input_number)


if (is.na(input_number) | ((nchar(as.character(input_number))) != 3) | ((input_number >= 0) == F)) {
  print ("Error. Quitting Program")
} else {
  input_number_character <- as.character(input_number) #Turning number back into character 
  input_number_character <- strsplit(input_number_character, split = "") #Splitting character and delimiting with "" 
  input_digit_hundred <- as.numeric(input_number_character[[1]][1]) #Selecting the 100's digit 
  input_digit_ten <- as.numeric(input_number_character[[1]][2]) #Selecting the 10's digit 
  input_digit_one <- as.numeric(input_number_character[[1]][3]) #Selecting the 1's digit 
  
  sum_of_digits <- (input_digit_hundred ^3) + (input_digit_ten ^3) + (input_digit_one ^3) #Summing the cube of the individual numbers 
  
  if ((sum_of_digits == input_number)) { #Evaluating whether the sum is equal to original number
    print(paste(input_number, "is a Narcissistic number!")) #If the condition is True, then prints T message
  } else {
    print(paste(input_number, "is not a Narcissistic number! ")) #If the condition is False, then prints F message
  }
  
}

## Deweena: The code is elegant, very cool!

