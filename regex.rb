#START_WITH? & END_WITH?
# phrase = "The Ruby Programming Language is amazing!"

# # puts phrase.start_with?("The Ruby") 
# # * -> looks to see what is in the start of the phrase
# # * -> case-sensitive
# # puts phrase.end_with?("zing!")
# # * -> looks to see what is in the end of the phrase
# # * -> case-sensitive 

# def custom_start_with?(string, substring)
#     string[0,substring.length] == substring ? true : false
# end 
# puts custom_start_with?(phrase,"The")


# def custom_end_with?(string, substring)
#      string[-substring.length..-1] == substring ? true : false
# end 
# puts custom_end_with?(phrase,"zing!")

# INCLUDE METHOD
# phrase = "The Ruby Programming Language is amazing!"
# # puts phrase.include?("Ruby")

# def custom_include?(string,substring)
#     len = substring.length
#     string.chars.each_with_index do | value, index|
#        return true if string[index, len] == substring 
#     end 
#     false
# end

# p custom_include?(phrase, "Language")


######################################################*
# REGEX 
## ruby object of class Regexp
## used to match patterns in strings
## created with two forward slahses (//) syntax
## condition is palced between the two forward slashes

## =~ syntax will return the index position of the first match
## example: string =~ /condition/
## returns nil if no match

# puts //.class
# phrase = "The Ruby Programming Language is amazing!"
# p phrase =~ /g/ #or you can write it in reverse /g/ =~ phrase

# p phrase =~ /Ru/ # returns index of first character


# SCAN 
## called on string
## accepts regex argument
## finds all matches of regexpression and returns an array
## accepts a block as an argument

# voicemail = "I can be reachEd at 555-123-4569 or test@gmail.com"

# # p voicemail.scan(/ea/)
# # ## anything within square brackets will be returned
# # p voicemail.scan(/[re]/) # -> searches any occurrences of r or e
# # p voicemail.scan(/[EeRr]/) # -> returns occurrences of lower and upper case e or r.

# p voicemail.scan(/\d/) # -> returns all digits ["5", "5", "5", "1", "2", "3", "4", "5", "6", "9"]
# p voicemail.scan(/\d+/) # -> + returns all digits of the same in a row ["555", "123", "4569"]
# #\d -> a digit
# # \d+ -> 1 or more digits in a row

# # scan accepts blocks
# voicemail.scan(/\d+/) {|digit_match| puts "#{digit_match} | length: #{digit_match.length}"}

# phrase = "The Ruby Programming Language is amazing and awe-inspiring."
# # . -> returns any single valid character
# ## also known as a wildcard
# puts phrase.scan(/.am/) # -> returns any occurence of any character followed by am

# # BACKSLASH
# paragraph = "This is my essay. It's lit. I like pies. 5/5"
# puts paragraph.scan(/\./) #-> returns all occurences of a period
# puts paragraph.scan(/\d/)
# puts paragraph.scan(/\D/) # -> returns anything that's not a digit
# puts paragraph.scan(/\s/) # -> any occurrence of a whitespace
# puts paragraph.scan(/\s+/) # -> returns any 1 or more whitespaces
# puts paragraph.scan(/\S/) # -> returns any non-whitespace character
# ## backslash changes the periiod from a wildcard symbol to an actual period.
# ## changes the meaning of what follows



# REGEX ANCHORS
## ties a match to a specific point in a string
# poem = "99 bottles of bear on the wall, 99 bottles of beer"

# p poem.scan(/\A\d+/) # ->  returns first occurrence of a digit at the beiginning
# p poem.scan(/eer\z/) # ->  returns first occurrence of whatevr at the end of string


# ## EXCLUDE CHARACTERS
# sales = "I bought 9 apples, 25 bananas, and 4 oranges at the store."
# puts sales.scan(/[^aeiou]/) # -> exclude the characters following ^, case sensitive
# puts sales.scan(/[^aeiouAEIOU,\s\d\.]/)



# SUB and GSUB method
## .sub("target_string", "replacement_string")
### replaces first occurrence of that character
### does not overwrite the original string
# puts "whimper".sub("m","sW")

# ## .gsub("target_string", "replacement_string")
# ### global substituation
# ## replaces every occurence
# ### adding a bang ! will modify the original content
# # puts "555 555 1234".gsub(" ","-")
# puts "(555)-555 1234".gsub(/[-\s\(\)]/,"") # -> removes dashes, 

# REGEX SYNTAX RULES
## [] -> anything placed in the middle will be returned
## . -> wildcard symbol. will return any character
## \d -> will return any digit
## \d+ -> will return any digit that occurs in a row ex: 555
## \D -> returns everything that's not a digit
## \s -> returns all whitespace
## \A -> return only at the beginning of a string
## \z -> return only at the endof a string, must be placed at the end of the expression
## ^ -> excludes characters following it
## rubular.com is a resource for regexp