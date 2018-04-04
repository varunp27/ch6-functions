# Exercise 4: functions and conditionals

# Define a function `is_twice_as_long` that takes in two character strings, and 
# returns whether or not (e.g., a boolean) the length of one argument is greater
# than or equal to twice the length of the other.
# Hint: compare the length difference to the length of the smaller string
is_twice_as_long <- function(string1, string2) {
  if(nchar(string1) > nchar(string2)) {
    larger <- 2 * nchar(string2) >= nchar(string1)
  } else if(nchar(string2) > nchar(string1)) {
    larger <- 2 * nchar(string1) >= nchar(string1)
  } else {
    larger <- FALSE
  }
  return(larger)
}

# Call your `is_twice_as_long` function by passing it different length strings
# to confirm that it works. Make sure to check when _either_ argument is twice
# as long, as well as when neither are!

is_twice_as_long("Trevor", "Varun")
is_twice_as_long("four", "a")
is_twice_as_long("two", "two")
# Define a function `describe_difference` that takes in two strings. The
# function should return one of the following sentences as appropriate
#   "Your first string is longer by N characters"
#   "Your second string is longer by N characters"
#   "Your strings are the same length!"
describe_difference <- function(string1, string2) {
  if(nchar(string1) > nchar(string2)) {
    difference <- nchar(string1) - nchar(string2)
    sentence <- paste("Your first string is longer by", difference, "characters")
  } else if (nchar(string2) > nchar(string1)) {
    difference <- nchar(string2) - nchar(string1)
    sentence <- paste("Your second string is longer by", difference, "characters")
  } else {
    sentence <- "Your strings are the same length!"
  }
  return(sentence)
}

# Call your `describe_difference` function by passing it different length strings
# to confirm that it works. Make sure to check all 3 conditions1
describe_difference("varun", "trevor")
describe_difference("swag", "swag")
describe_difference("trevor", "varun")
