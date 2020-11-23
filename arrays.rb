#ordered collection of other objects
# arr = [1,2,3,4]
# p arr

# anime = ["DBZ", "Naruto", "Bleach", "Fate/Stay Night"]
# p anime

# person = [["Alex", 25, true], 
#           ["Tom", 35, false], 
#            ["Stacy", 45, true]]
# p person


#Shorthand Syntax for An Array of Strings
## %w before braackets
## no need for commas as the space is the separator
# names = %w[Jack Jill John James Ann Marie]
# p names

# ARRAY.new METHOD
## accepts 2 arguments. 1st argument is length of array, 2nd is the item that's stored

# p Array.new() # -> empty
# p Array.new(3) # -> array with 3 nil objects
# p Array.new(10, 5) # -> array with length of 10 and number 5.


# Index Position
## arrays are zero-based
# anime = %w[Gohan Yamcha Krillen Goku Trunks]

# p anime.length

# total_items = anime.length

# p anime[0]
# p anime[total_items - 1] # get last index position
# ## OR ##
# p anime[- 1] # get last index position

# FETCH METHOD
## thorws error if a position does not exist
#  p anime.fetch(-1)
#  p anime.fetch(3)
# #  p anime.fetch(6)

#  #can place default
#  p anime.fetch(10, "Majin Buu") #will provide it with a default.

#  p anime[0..2] #return sequential items back from array
#  p anime[0,4] #return sequential items back from array [starting_point, how many items you want returned.]

 # .values_at METHOD 
 ## return an array
 ## returns values at the indices provided

#  p anime.values_at(0,3,2)

# SLICE METHOD
# numbers = [1,2,3,4,5]
# p numbers.slice(2) # -> extracts value at index position

# p numbers.slice(100) # -> will return a nil value

# p numbers.slice(1,2) # -> will return starting at index 1 and return 4 items.
# p numbers.slice(1..3) # -> returns a range between index 1 and 3.
# p numbers.slice(0...4) # -> excl;usive 


# OVERWRITE (MUTATING) ARRAYS
# naruto_characters = ["Naruto" , "Sasuke", "Sakura", "Hinata", "Kakashi" ]

# naruto_characters[0] = "Boruto"

# p naruto_characters

# naruto_characters[3] = "Neji"
# p naruto_characters

# naruto_characters[1..2] = "Sarada" #removes the range and replaces it with 1 item.
# p naruto_characters

# naruto_characters[10] = "Orochimaru" 
# # ruby populates the sequential indicis with nil objects
# p naruto_characters

# naruto_characters[4, 8] = ["Itachi", "Deidara", "Kisame", "Bee", "Ino"]

# p naruto_characters

# LENGTH, COUNT & SIZE METHODS
## length -> returns how many items are in an array
## starts counting as one
# arr = [1, 2, 3,4,4 ,3 ,2 ,1 ,5]
# p "This is the length: #{arr.length}"
# ## size -> a duplicate of length, slgihtly more efficient
# p "This is the size: #{arr.size}"
# ## count -> with no arguments returns lenght/size. When you paas an argument the count method will look for that item and counts the occurrences
# p "This is the count: #{arr.count}"
# p "how many times does 4 occur?: #{arr.count(4)}"


# EMPTY? AND MIL? methods
## predicate(boolean)  methods

## empty? -> checks if length of array is 0
# p [1,2,3].empty?
# p [].empty?

# ## nil? -> returns true only on the nil class
# p [].nil? # -> returns false


# first and last method

# arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
# # p arr.first
# # p arr.last

# # # adding an optional integer will return that number of items.
# # p arr.first(3) #-> returnns first 3 items
# # p arr.last(3) # -> returns last 3 items

# # CHALLENGE
#  def custom_first(arr, num = 0)
#     return arr[0] if num == 0 #returns first element
#     arr[0, num] 
#  end

#  p custom_first(arr,2)

#  def custom_last(arr, num = 0)
#     return arr[-1] if num == 0 #returns last element
#     arr[-num..-1] 
#  end

# PUSH METHOD | SHOVEL OPERATOR
## permanently mutates the array

# locations = ["House", "Airport", "Bar"]

# locations.push("Restaurant")
# p locations
# locations.push "Retreat" # -> parenthesis are optional
# p locations

# ## shovel - works like the push method but you just need a symbol instead
# locations << "Saloon"
# p locations

# #insert
# locations.insert(1, "Townhouse") # -> inserts elements in a certain location
# p locations


#POP method
## removes and returns element within an array

# arr = [1,2,3,4,5,6,7,8,9,10]
# p arr
# remove_items = arr.pop
# p "Array after Pop #{arr} | Removed Items: #{remove_items}"
# arr.pop(4) #remove that number of items from array starting from the last part of the array
# -> returns items in array form
# p arr


# SHIFT 
## removes the first element in the array
# returns the variable removed
# arr = [1,2,3,4,5,6,7,8,9,10]
# # -> returns items in array form
# arr.shift
# p arr
# # unshift adds arguments to front of array.
# arr.unshift(0, 1)
# p arr

#EQUALITY AND INEQUALITY
# arrays must have exact same length and item in the same order for it to return true

# a = [1,2,3,4]
# b = [1,2,3,4]
# c = [1,3,4]
# p a == b # -> true
# p a == c  # -> false
# p a != c  # -< true

# SPACESHIP OPERATOR
## only returns -1 ,0, 1, nil
## if both values are equal it returns 0
# p 5 <=> 5
# # if right side is greater or value on left side is smaller it returns -1
# p 5 <=> 10
# #if right is smaller will return 1
# p 10 <=> 2
# #nil is returned when operation cannot be compared
# a = [1,2,3,4]
# b = [1,2,3,4]
# c = [1,3,4]
# p 10 <=> a # -> returns nil
# p a <=> b # -> returns 0
# p a <=> c # -> returns -1

#CONVERT RANGE TO ARRAY 
# letters_range = "a".."t"
# p "this is a range: #{letters_range}"
# arr = letters_range.to_a 
# p "This is the conversion to an array: #{arr}"

# numbers_range = 1..10
# p "this is a range object: #{numbers_range}"

# new_arr = numbers_range.to_a
# p new_arr


# EACH METHOD
# candies = ["Snickers", "Reeses", "Take 5", "Twix"]

# candies.each do |candy|
#     puts candy
# end

# # OR

# candies.each{ 
#     |candy| 
#     puts candy.upcase 
# }

# number = 0

# [1,2,3,4,5,6,7,8,9,10].each do |num|
#     square = num * num
#     number += 1
#     puts " #{number}: quare of #{num} is #{square}"
# end

# numbers = [1,2,3,4,5,6,7,8,9,10]

# numbers.each do |number|
#     if number.even?
#         puts number
#     end
# end
# even_nums = []
# odd_nums = []
# numbers.each do |num|
#     if num.even?
#         # even_nums.push(num)
#         even_nums << num
#     elsif  num.odd?
#         # odd_nums.push(num)
#         odd_nums << num
#     end
# end

# REFACTOR 
# numbers.each do |num|
#     num.even? ?  even_nums << num : odd_nums << num
# end

# REFACTOR 2

# numbers.each{ |num| num.even? ?  even_nums << num : odd_nums << num }

# p "Even: #{even_nums}"
# puts "--------------------"
# p "Odd: #{odd_nums}"

# shirts = ["striped", "plain white", "plaid", "band"]
# ties = ["polka dot", "solid color", "boring"]

# shirts.each do |shirt|
#     ties.each do |tie|
#         puts "Options: A #{shirt} shirt and a #{tie} tie."
#     end
# end

# FOR LOOP 
## not as secure as each method
# numbers = [1,2,3]

# for num in numbers
#     puts num
# end

# colors = %w[Red Blue Green Yellow]

# colors.each_with_index do |color, index|
#     puts "#{color} | #{index}"
# end

# arr = [1,2,3,4,5]

# total = 0
# arr.each_with_index do |num, i|
#     total += (num * i)
# end
# puts total

# arr = [-1,2,1,2,5,7,3]

# def printProducts(arr)
#     arr.each_with_index do |num, i|
#         if i > num 
#             puts "Values: #{i}|#{num}"
#             puts "Product: #{num * i}"
#         end
#     end

# end

# printProducts(arr)

# MAP & COLLECT
# nums = [1,2,3,4,5]
# # squares = nums.map { |item|  item ** 2 }
# squares = nums.collect { |item|  item ** 2 }
# p squares

## -> collect method returns a brand new array

# def cubes(array)
#     array.map{ |num| num ** 3}
# end
# p cubes(nums)

# animals = %w[Lion Tiger Bear Zebra]

# i = 0
# while i < animals.length
#     puts animals[i]
#     i += 1
# end 

# BREAK KEYWORD -> stops the program form running. Like the return keyword
# prizes = %w[pyrite pyrite pyrite gold pyrite]

# i = 0
# while i < prizes.length
#     current = prizes[i]
#     if current == "gold"
#         puts" found it!"
#         break
#     else
#         puts "not gold"
#     end
#     i += 1
# end

# NEXT KEYWORD
# prizes = %w[gold gold gold pyrite gold silver copper]

# prizes.each do |item|
#     unless item == 'gold'
#         next 
#     else
#         puts "i found it! - #{item}"
#     end
# end

# REVERSE METHOD
# p [1,2,3].reverse
# p ["A","B","C"].reverse
# p "hElLo".reverse.swapcase
## array.reverse! used to mutate array stored in variable

# SORT METHOD
## sorts asc order with numbeers
## sorts alphabetically with strings

# numbers = [10,8,6,9,5,3,2,5,1]
# p numbers.sort
# p numbers.sort.reverse
# words = ["apple", "zebra", "cat"]
# p words.sort

# CONCAT
## -> mutates original array
# anime_Characters = ["Naruto", "Asta", "Itachi", "Goku", "Archer"]
# anime_show = ["Naruto", "Black Clover", "Naruto Shippuden", "DBZ", "Fate/Stay Night"]

# p anime_Characters.concat(anime_show)

# a = [1,2,3]
# b = [4,5,6]

# def custom_concat(arr1, arr2)
#     arr2.each {|num| arr1 << num }
#     p arr1
# end

# custom_concat(a,b)

# MIN & MAX METHODS
# stock_prices = [723.99, 434.12, 84.7, 649.92]
# p stock_prices.max
# p stock_prices.min
## -> for Strings - the element with the furthest letter from a.

# def custom_max(arr)
#  sorted_arr = arr.sort
#  p sorted_arr[arr.length - 1]
# end

# custom_max(stock_prices)

# def custom_min(arr)
#     sorted_arr = arr.sort
#  p sorted_arr[0]
# end

# custom_min(stock_prices)

# INCLUDE METHOD
## -> takes an argument to look for within an object
## -> returns a true or false
## -> it is case-sensitive

# alpha = %[a b c d e]
# p alpha.include?("a")
# p alpha.include?("A")
# p alpha.include?("z")

# INDEX & FIND_INDEX
## index -> returns the index of the argument
## returns the first occurence

##find_index -> older but does the same thing
## if no value is found it will return nil

# colors = %[Red Blue Green Red]
# p colors.index("Orange")
# p colors.index("Blue")


# SELECT
## -> takes a block similar to the each method
## -> whatever that is in the block must evaluate to a true or false

# grades = [80, 95 , 13, 76, 28, 39]

# matches = grades.select do |number|
#     number >= 75
# end
# p matches

# REJECT METHOD
# -> called on an array
# -> accepts a block
# -> rejects all elements that return true within the block
# -> returns all false items

# animals = %w[cheetah cat lion elephant dog cow]

# results = animals.reject { |animal| animal.include?("c")}
# p results

# UNPACK A MULTIDIMENSIONAL ARRAY

# users = [
#     ["Bob", 25, "male"], 
#     ["Sally", 48, "female"], 
#     ["Larry", 65, "male"]
#     ]
# bob, susan, larry = users
# #if you only assign 1 less variable to the assignment it will still work.
# p bob
# p susan
# p larry

# PARTITION METHOD
# -> returns 2 arrays within a larger array
# -> 1st array will contain items that are true for the statement in the block
# -> 2nd array will contain items that are false for the statement in the block
# foods = ["Steak", "Vegetables", "Steak Burger", "Kale", "Tofu", "Tuna Steaks"]

# good, bad = foods.partition{ |food| food.include?("Steak") }
# #splits food array based on Steak 

#  p good
#  p bad

# CODING EXERCISE
# def evens_and_odds(numbers)
#     # Write your code here
#     odd, even = numbers.partition{ |num| num.odd?}
#     p odd
#     p even
#   end

# numbers = [15,23,55]
# evens_and_odds(numbers)

# [10, 1, 6, 4, 8, 10, 4].each_with_index do |number, i|
#     puts number * i * 2
# end


# OBJECT POINTERS & OBJECT COPIES
# a = [1,2,3]
# p a.object_id # -> returns object's position in computer memory
# b = a  
# p b.object_id == a.object_id # -> returns true because b is a copy of a

# # DUP METHOD
# ## creates a seperate object
# c = b.dup  
# p c.object_id == b.object_id # -> returns false because c is a brand new object.

# SPLAT ARGUMENTS
## -> used when the number of arguments are unknown
# def sum(*numbers) # splat argument is *numbers, will come in as an array
#     sum = 0
#     numbers.each { |num| sum += num}
#     sum
# end

# p sum(1,2,5,4,8)
# #research how to combine splat arguments with regular arguments

# # ANY METHOD
# ## predicate method that takes a block
# ## if any is true then it will return out
# p [1,3,5,7,2].any? do |num|
#     num.odd?
# end

# p [1,2,4,5].all? {|num| num.odd?} #  -> returns false because there are even numbers in the array.

# FIND AND DETECT METHODS
## identical methods that have 2 different names
## returns the first item that is true for the condition
# words = %w[dictionary refrigerator platypus microwave]

# p words.find {  |word| word.length > 10}
# p words.detect {  |word| word.length > 8}

# UNIQ METHOD
## returns a new array with all duplicates removed
## the bang (!) method to this uniq! will alter the original array

# numbers =[1,1,1,2,2,3,4,6,7,8]
# p numbers.uniq 

# def custom_uniq(array)
#     final = []
#     array.each {|elem| final << elem unless final.include?(elem)}
#     final
# end

# p custom_uniq(numbers)
 
#COMPACT METHOD
## -> removes all nil values from an array
## has a bang version .compact!

# arr = [1,2,3,nil,nil,4,5,6, false, true, nil]
# p arr.compact 

# def custom_compact(array)
#     final = [] # -> define an empty array to hold values
#     array.each {|elem| final << elem unless elem == nil} # -> push elem into final array unless elem is a nil value
#     final  # -> return final array
# end

# p custom_compact(arr)

#INJECT and REDUCE METHODS
## identitcal methods that do the same thing
### -> used when iterating over an array and need to keep track of the accumulative value
## ex: rolling sum
## array.reduce(starting value) do |previous, current|
#    code
## end

# result = [10,20,30, 40].reduce(0) do |accum, curr|
#     puts "previous value is: #{accum}"
#     puts "current value is: #{curr}"
#     accum + curr
# end

# p result

# product = [3,6,9,10,55,22].reduce(1) do |prev, curr|
#     puts "previous value is: #{prev}"
#     puts "current value is: #{curr}"
#     prev * curr
# end

# p product

#FLATTEN METHOD
## removes nested array and returns a 1-dimensional array
## has a bang method

# user = [["stacy", 20, false],["bob", 25, true], ["Lynell", 35, true]]

# p user.flatten 

#ZIP METHOD
## combines elements of 1 or more arrays together based on a index
## creates sub arrays based on similar indexex between 2+ arrays
## can accept more than one array
# names = ["bob", "stacy", "jeff"]
# age = [25,32,6]
# registrations = [true, false, false] 
# # p names.zip(registrations, age)

# def custom_zip(arr1,arr2)
#     final = []
#     arr1.each_with_index do |value, index|
#         final << [value, arr2[index]]
#     end
#     final
# end
# p custom_zip(registrations, age)

#SAMPLE METHOD
## returns a random item within an array
## accepts a nubmer as an argument, will return that number of random elements within the array. These elements will not be the same
# numbers = [1,2,3,4,5,6,7,8,9,10]
# p numbers.sample()
# p numbers.sample(2)

#ASTERISK FOR MULTIPLYING AN ARRAY
## returns the element x times within the array
# p [1,2,3] * 5
# ## 1,2,3 will be repeated 5 times in ths array

# def custom_multiply(arr, num)
#     result =[]
#     num.times{ arr.each{|element| result << element}}
#     result
# end

# p custom_multiply([1,2,5], 5)


# UNION
## combines multiple arrays into 1 while removing duplicates in the final array

# arr1 = [1,2,3]
# arr2 = [3,4,5]

# p arr1 | arr2 # -> will return 1 array with no duplicates

# def custom_union(arr1,arr2)
#     arr1.dup.concat(arr2).uniq # -> creates a new object in memory, concats arr2, and removes duplicates
# end

# REMOVE VALUES FROM ARRAY
# removed numbers specified on the left side from the right side of the array
# p [1,2,2,2,2,3,4,5] - [2,3]

# def custom_subtraction(arr1, arr2)
#     final = []
#     arr1.each {|value| final << value unless arr2.include?(value)}
#     final
# end

# ARRRAY INTERSECTION
# returns an array of common items that appear in both arrays
# p [1,2,2,3] & [1,3,4,5,6]

# def custom_intersection(arr1, arr2)
#     final = []
#     arr1.uniq.each { |el| final << el if arr2.include?(el)}
#     final
# end
