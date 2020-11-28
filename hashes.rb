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


# HASH DEFAULT
# numbers = Hash.new("Does not Exit") # ->  is now the default value
# numbers[:one] = 1
# numbers[:two] = 2
# p numbers[:three] 
# p numbers[:one] 

# OR you can set it later 
# numbers.default = "This number no longer exists"
# -> default method does not use () instead you assign it a value
# p numbers[:three] 

# CONVERT TO ARRAY AND VICE VERSA
# spice_girls = {scary: "Melanie Brown", sporty: "Melanie Chisholm", baby: "Emma Bunton", ginger: "Geri Halliwell" ,posh: "Victoria Beckham"}
# p spice_girls.to_a # -> returns nested arrays
# p spice_girls.to_a.flatten # -> returns regular array with no nested arrays

# HASH -> ARRAY 
# power_rangers = [[:red, "Jason"], [:black, "Zack"]]
# p power_rangers.to_h

# SORT METHODS
## sorts by key
## sort_by method helps you sort by value
# pokemon = {squirtle: "Water", bulbasaur: "Grass", charizard: "Fire"}
# p pokemon.sort 
# p pokemon.sort.reverse  
# puts "...."

# p pokemon.sort_by { |pokemon, type| pokemon } # -> sort by keys
# p pokemon.sort_by { |pokemon, type| pokemon }.reverse
# p pokemon.sort_by { |pokemon, type| type } # -> sorting by values

# KEY? and VALUE? methods
## -> checks if keys or values are present within a hash
# cars = {toyota: "camry", teslaX: "model x", teslaY: "model y"}

# puts cars.key?(:teslaS)
# puts cars.key?(:teslaX)
# puts 
# puts cars.value?("camry")
# puts cars.value?("mustang")

# HASHES AS METHOD ARGUMENTS\

# def calc_tip(price, tip_percent)
#    tip = (tip_percent / 100.0)
#    total_tip = price * tip
#    total_value_with_tip = (price + total_tip)
# end

# # p calc_tip(10, 10)
# bill = {tip_percent: 10, price: 10}

# def calc_tip2(info)
#     tip = info[:tip_percent] / 100.0
#     total_tip = info[:price] * tip
#     total_value_with_tip = info[:price] + total_tip
#     return  "Your Total is: #{total_value_with_tip}, with a tip of #{total_tip}"
# end



# p calc_tip2(bill)
# p calc_tip2({tip_percent: 20, price: 55})
# # -> if a hash is the last argument in  amethod then you do not need the curly braces
# # -> only valid in method call

# DELETE METHOD
## -> permanently mutates the hash
## cannot method chain
# super_heroes = {spiderman: "Miles Morales", robin: "Dick Grayson"}
# removed = super_heroes.delete{:robin}

# SELECT AND REJECT METHODS
## -> takes a black with 2 arguments
# recipe = {sugar: 5, flour: 10, pepper: 4}
# high = recipe.select { |key, values| values >= 5 }
# p hig
# low = recipe.reject { |key, values| values >= 5 }
# p low.to_a.flatten

# MERGE / COMBINING HASHES
## accepts an arguyment like concat
## does not permanently mutate an array
# recipe = {sugar: 5, flour: 10, pepper: 4}
# power_rangers = {red: "Jason", black: "Zack"}
# merged_hash = recipe.merge(power_rangers)
# p merged_hash

# sentence = 'Bald head hoe over the open road hoe ahh trick ahhhh hoe ahhh bald ahhhh spit'

# def word_count(string)
#     words = string.split(" ") # -> split into array
#     count = Hash.new(0) # -> init empty hash with a default value of 0
#     words.each do |word| # -> iterate over the array
#         count[word] += 1 # -> increment each key and store it in the new hash
#     end
#     count # -< print hash
# end

# p word_count(sentence)

