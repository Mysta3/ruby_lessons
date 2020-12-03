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