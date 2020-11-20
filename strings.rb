# # name = 'Aelx'
# # revenue = '$5000'

# # puts name, revenue

# # name = String.new("Alex")
# # p name
# #  p 6.to_s

# #MultiLine String
# ##often called Here documents
# # words = <<MLS
# #     THis is a multi-line string
# #     This will be interesting
# #     hahaah
# # MLS

# # print words


# #ESCAPE CHARACTERS
# # puts 'Julia said \'Goodbye\' to Romeo'
# # puts 'It\'s lit!'

# # puts "Let\'s add a line break\nrighthere" #must use double quuotes
# # puts"\tThis is a tab right here"


# #Single Quotes VS Double Quotes
# #single quotes interpret things more literally

# #Inequality vs Equality 

# # a = "Hello"
# # b = "hello"
# # c = "Hello"

# # p a == c 
# # p a != b
# # p a != c

# #Concatenation
# # first_name = "John "
# # last_name = "Stewart"
# # # first_name += last_name
# # # p first_name
# # # p first_name.concat(last_name) #concat overwrites original variable

# # p first_name <<"'Green Lantern' "<< last_name #shovel method

# # .length & .size methods
# ## size and length both do the same thing.
# # a = "Naruto"
# # b = "Sasuke"
# # c = " "
# # d = ""


# # p a.length
# # p a.size
# # p b.length
# # p b.size
# # p c.length
# # p c.size
# # p d.length
# # p d.size

# #Extract Characters using Bracket syntax

# sentence = "this is the time where I am getting hungry"

# # p sentence.length

# # p sentence[3]

# # ##using negatives will give you the last characters

# # p sentence[-3]
# # p sentence.slice(-3)


# # Extract Multiple Characters from a String
# # p sentence[5,4] #[beginning index, # of characters to extract]
# # p sentence.slice(0,5)
# # p sentence.slice(0,sentence.length) #takes the whole sentence

# # #RANGE OBJECT
# # p sentence[27..40] #2 dots are inclusive -> includes the last number
# # p sentence[27...40] #3 dots are exclusive -> does not include the last number
# # #if the second number is greater than the length , ruby will intelligently return the rest and won't throw an error.

# # p sentence.slice(0..-10)

# # Overwrite Character using Bracket Notation

# word = "Hey"
# p word
# puts "swapping"
# word[0] = "p"
# p word
# puts "change the word!"
# word[0,3] = "Totally"
# p word

#SWAP CASE CAPITALIZE
# name = "aLeX"
# p name.swapcase
# p name.capitalize 

#REVERSE METHOD
#returns a brand new string object
# name = "alex"
# p name.reverse 

# BANG METHODS
# word = "test"
# word.capitalize! #used to permantely make a change to the original object
# p word

#bang is the exclamation point
##not available on every method, just some.

# SPLIT METHOD
# -> returns an array based on the delimiter
# -> default delimiter is a space
# -> change delimiter by providng an argument

# sentence = "Hi, my name is Test. I have space in my budget"

# p sentence.split
# p sentence.split(".") # -> use a . as a delimiter 
# p sentence.split("m")

# def longest_word(sentence)
#     # Write your code here
#     arr = sentence.split(" ")
#   arr.sort! { |a, b| b.length <=> a.length }
#   p arr[0]
# end

# longest_word("Bobby loves big scary kangaroos")

# ITERATE OVER STRING
## break string into array using split or chars method

# "Hello World".each_char{|char| puts char}
# name = "test"
# p name.split("") # -> returns array of characters
# p name.chars # -> returns array of characters
# letters = name.chars
# letters.each { |letter| puts "#{letter} is awesome" }

# p letters.join
# -> passing an argument it will add a dash between the characters.

# COUNT METHOD
## -> counts like a humans mind
## -> pass in argument to count # of occurrences
# char = "Hello"
# p char.count("l") # -> 2
# p char.count("oHl") # -> 4 >> 1: H , 2: l, 1: o

# def custom_count(string, search_characters)
#     count = 0
#     string.each_char do |char|
#         if search_characters.include?(char)
#             count += 1
#         end
#     end
#     p count
# end

# custom_count("this is wild crazy", "il")

# INDEX and RINDEX METHOD
## index method -> returns index of character(s)
## -> returns where the character first occurs
## returns nil  if character is not found
## rindex -> stands for reverse index or right index. 
## does the same thing but in reverse
# fact = "i am lit"

# p fact.index("i") # -> returns 0 index
# #pass in a second argument to start from that index
# p fact.index("i", 3) # -> returns 6 index
# fact = "I am handsome"
# def custom_index(string, substring)
#     return nil unless string.include?(substring)
#     length = substring.length
#     string.chars.each_with_index do |char, index|
#         sequence = string[index, length]
#         return index if sequence == substring
#     end
# end
# p custom_index(fact, "I")

# INSERT METHOD
## mutates the original string
# typo ="itchi"
# typo.insert(2,"a") # (index where you want to place letter, letter to be inserted)
# p typo

# SEQUEEZE METHOD
## removes any duplicate characters in a row, including spaces.
## pass an argument to focus on a character to only remove that character
# sentence = "Tthe aardvark jummped oooovvveerrrrr thhhhhe ffffeennnce"
# # p sentence.squeeze  
# def custom_squeeze(string)
#     final = ""
#     chars = string.split("")
#     chars.each_with_index do |char, index|
#         if char == chars[index + 1]
#             next
#         else
#             final << char 
#         end
#     end
#     final
# end
# p custom_squeeze(sentence)

#CLEAR METHOD
## clears out the string
## does not need a bang (!) to mutate the original object
# word = "hello"
# word.clear
# p word

# DELETE METHOD
## removes all characters specified on a string
## there can be more than one character
## add the bang to mutate the original string.

# word = "Hello World"
# word.delete!("l")
# p word

# def custom_delete(string, delete_characters)
#     new_string = ""
#     string.each_char { |char| new_string << char unless delete_characters.include?(char) }
#     new_string
# end

# p custom_delete("Hello World", "lWH")