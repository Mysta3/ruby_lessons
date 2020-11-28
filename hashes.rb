#Optimal for storing relationships between objects
## aka hash map - > is a data structure that stores key-value pairs.
## called dicitonaries, maps, or associateive arrays in other languages.
## connects unique identifiers (keys) to values

## RULES OF HASH
## keys and values can be objects of any type
## keys must be unique
## values can contain duplicates
## should be treated as unordered. Values are extracted by their key not by order

# empty_hash = {}
# p empty_hash
# p empty_hash.class

# CREATE & EXTRACT VALUES
## returns nil if you try to extract a value that does not exist
## case-sensitive
# anime_hash = {"MHA" => "Izuku", "DBZ" => "Vegeta", "Naruto" => ["Naruto", "Sasuke", "Sakura"]} #creation
# p anime_hash["MHA"] #extraction
# p anime_hash["DBZ"] #extraction
# p anime_hash["Naruto"][2] #extraction

# SYMBOL
## a lightweight string object
## used as hash keys instead of strings because of the use of memory
## Doesn't use much memory because it does not include all the methods that strings have attached
# EXAMPLE: :symbol 

# p :name #-> a name symbol
# p :name.methods # -> prints all methods that return an array of methods

# person = {:name => "Todoroki", :age => 21, :gender => "male", :hero_status => false, :abilities => "ice & fire manipulation"}

# p person[:name]
# p person[:age]
# p person[:abilities]

# ## shorthand version
# ## write like you would write an object in javascript
# ## you will see this more 
#  villian = {name: "One for All", age: 40, hero_status: "villian", abilities: "Stealing of powers"}

#  p villian[:name]
#  p villian[:age]
#  p villian[:abilities]

# CONVERT SYMBOL TO STRING & VICE VERSA
# p :name.to_s # -> convert to string
# p :name.to_sym # -> convert to symbol

# FETCH METHOD
## can only take 2 argument
## returns error when key is not found
# menu = {burger: 3.99, taco: 3.96, chips: 0.5}
# message = "Key not found"
# p menu.fetch(:burger)
# p menu.fetch(:salad, message) # -> ruby will return the 2nd argument if the first is not found

# ADD A KEY/VALUE PAIR
# apex_squad = {assault: "wraith",  scout: "bloodhound", support: "lifeline"}
# god_of_war = {}
# apex_squad[:defense] = "gibby"
# p apex_squad
# apex_squad[:support] = "mirage"
# p apex_squad

## store method modifies hash in place
## first argument is the key
## second argument is the pair
# apex_squad.store(:second_assault, "horizon")

# LENGTH AND EMPTY METHODS
## length -> returns total key/value PAIRS
## empty -> checks if there are no key/value pairs in a hash
# p apex_squad.length
# p apex_squad[:assault].length #returns length of string for assault key.

# p apex_squad.empty? # -> returns false
# p god_of_war.empty? #-> returns true

# EACH METHOD
## iterates over hash
## must provide 2 block variables. 1 for kley and 1 for pair
## if you only give 1 block variable , ruby will return an array object
# apex_squad = {assault: "wraith",  scout: "bloodhound", support: "lifeline"}
# # apex_squad.each do |role, character|
# #     puts "#{role.capitalize} is taken by #{character}"
# # end 

# # p apex_squad.count
# # apex_squad.each {|role, character| puts "#{role} | #{character}"}

# def value_count(hash, value)
#     num = 0
#     hash.each do |key, pair|
#        num += 1 if pair == value
#     end 
#     p num
# end

# value_count(apex_squad, "wraith")


# EACH KEY & EACH VALUE
## each_key - > takes a block, iterates over every key
## each_value -> takes a block, iterates over every value in a hash
# stuff = {a: 2, b: 3, c: 4}

# puts "EACH_KEY"
# stuff.each_key do |position|
#     puts "#{position}"
# end

# puts "EACH_VALUE"
# stuff.each_value {|values| puts "#{values}"}

#CHALLENGE 
##return an array of keys and one will spit out an array of values

# def custom_key(hash)
#     arr = []
#     hash.each do |key, value|
#         arr << key
#     end
#     p arr
# end

# custom_key(stuff)

# def custom_pairs(hash)
#     arr = []
#     hash.each do |key,value|
#         arr << value
#     end
#     p arr
# end

# custom_pairs(stuff)


# RETRIVE ALL KEYS OR ALL VALUES ROM HASH AS AN ARRAY
# stuff = {a: 2, b: 3, c: 4}

# p stuff.keys
# p stuff.values