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