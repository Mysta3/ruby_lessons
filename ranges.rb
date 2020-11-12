#stores a sequence of numbers or letters
## intervals like : 1 - 5, which will include 1, 2, 3, 4, 5
## range structure: starting number..ending number
## 3 dots in a range will exclude the last number
## 2 dots will include the last number
# nums = 1..5  
# nums_1 = 1...5

# # METHODS .first & .last
# ## arguments are optional
# ## not zero-based
# p nums.first # -> returns first number of interval
# p nums.last # -> returns last number of interval
# p nums.first(4) # arguments shows number of elements you want to return starting from the first
# p nums.last(4) # arguments shows number of elements you want to return starting from the last
# puts (1..10).first(3)

# ALPHABETICAL RANGES
## ruby stores uppercase alphabet first then some special characters and then the lowercase letters
# alphabet = "A".."z"
# alphabet = "A".."Z"
# # puts alphabet.last(10)
# # puts alphabet.first(10)
# puts alphabet.first(40)


# SIZE METHOD
## only works on numeric ranges
## the number of elements that are contained within that range within that interval.

# num = 100..200
# nums = 100...200
# p num.size #total elements within colleciton , dots make a difference
# p nums.size

# CHECK IF A VALUE EXISTS WITHIN A RANGE

# half_alphabet = "a".."m"
# puts half_alphabet.include?("j")
# puts half_alphabet.include?("z")

# numbers = -14..79
# puts numbers.include?(-12)
# puts numbers.include?(-120)

# #alternative syntax for include? method
# p half_alphabet === "k"


# GENERATE A RANDOM NUMBER using rand method
## generates random floating point number between 0 and 1
# puts rand
# puts rand.round(2) #controls trailing decimal numbers
# puts rand(500) #will generate a number between 0 and that number, won't actually get to the upper limit number. 
# puts rand * 100 #floating point number that is greater than 0 and 1. 
# puts rand(50..60) #generate rnadom numbers between x and y.