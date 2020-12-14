# ATTRIBUTES AND METHODS
## instance variables (attributes) belong to the object
## Attributes provid einfo about the object's current statte
## Instance methods belong to the object
## Encapsulation restricts direct access to an object

#SUPERCLASS & ANCESTORS METHODS
## SUPERCLASS
### class that a current class inherits from.
### can be called on a class. Returns the parent class
### subclass inherits form superclass 
# puts 5.methods.sort #-> returns methods in alphabetical order

# fixnum_methods = 5.methods.sort
# float_methods = 3.14.methods.sort

# puts fixnum_methods & float_methods # -> returns all methods that are shared between the two.

# puts fixnum_methods - float_methods # -> returns methods exclusive to fixnum

# SETTERS
    ## setters end with = signs attached to method name

# File name should be the name of the class being created
## folder name = Classes >> Filename = classname.rb

## Gadget class
class Gadget

end

## call the gadget class and store it into objects
# phone = Gadget.new
# laptop = Gadget.new
# microwave = Gadget.new
# puts phone.respond_to?(:class) # shows if the method is attached to the object.

## OBJECT ALIAS
shiny = Gadget.new
glossy = shiny
## glossy is now an alias of Shiny

## INSTANCE VARIABLES & .initialize Method
### instance variables belong to a specific object
### defines object's properties or attributes
### make up object's state
### begin with @ symbole -> @ called a sigil
### without the @ sigil -> @name

## initialize method
### called immediately when an object is instantiated from a class with the new method
### offers opportunity to assign values to instance  variables in order to define the objects state
### define initial state when object is first created
### Example

# class Gadget
#     def initialize #-> private method
#         @username = "User #{rand(1..100)}"
#         @password = "topsecret"
#         @production_number = "#{("a".."z").to_a.sample} - #{rand(1..100)} }"
#     end

#     def info
#         "Gadget #{@production_number} has the username #{@username}"
#     end

#     #shortcut accessor method
#     attr_accessor :username # read + write access
#     # def username
#     #     @username
#     # end
#     # def username=(new_username)
#     #     @username = new_username
#     # end

#     attr_reader :production_number # only read access
#     # def production_number
#     #     @production_number
#     # end
#     attr_writer :password # only write access
#     # def password=(new_password)
#     #     @password = new_password
#     # end    
# end

# phone = Gadget.new
# laptop = Gadget.new
# puts phone.inspect
# p phone.instance_variables # -> returns instance variables
# puts laptop.inspect
# puts laptop.info
# puts phone.info

# SELF KEYWORD
## instance method, refers to the closest object/function referencing.

# GETTER METHODS
## used to get instance variables
# puts phone.username
# puts laptop.username

# # SETTER METHODS
# puts phone.username=("tester")
# puts laptop.username=("apple")

# SETTERS
    ## setters end with = signs attached to method name


# SHORTCUT ACCESSOR METHOD
## access the value to either read,write, or overwrite it.
## attr_accessor
### creates both a getter and a setter

# class Animal
#     def initialize
#         @name = "Enter Animal name"
#         @action = "Tell me what to do"
#         @place = "Where do I live?"
#     end

#     def aboutMe
#        "I am #{@name}\nThis is what I can do: #{@action}\nI live here #{@place}"
#     end

#     attr_accessor :name, :action, :place
# end

# tiger = Animal.new
# bear = Animal.new
# dolphin = Animal.new

# tiger.name=("Tbetan Tiger")
# tiger.action=("GRRRAARRRR")
# tiger.place=("Tibetan Jungle")

# puts tiger.aboutMe

# bear.name=("Brown Bear")
# bear.action=("RAWR")
# bear.place=("Find me on my Yogi tip, in the camp stealing chips!")

# puts "*****************"
# puts bear.aboutMe

# dolphin.name=("Dolphin")
# dolphin.action=("I splash")
# dolphin.place=("I stay in the sea .....duhh")

# puts "***********"

# puts dolphin.aboutMe

# class Computer
#     def initialize(os, model, year)
#         @os = os
#         @model = model
#         @year = year
#     end


#     attr_accessor :os, :model, :year
# end


# macbook = Computer.new("iOS", "16-inch Macbook Pro", "2020")
# chromebook = Computer.new("windows", "Chromebook 5.2","2008")
# p "#{macbook.os} | #{macbook.model} | #{macbook.year}"
# p "#{chromebook.os} | #{chromebook.model} | #{chromebook.year}"

# INHERITANCE
## a way for a class to obtain all methods from another class
## avoids duplicate code across multiple classes
## class inherited from is called superclass or parent class
## class inheriting is called subclass or child class
## Ruby only supports single inheritance. A Class can only inherit form one other class.
## subclass is a type of the superclass -> "is-a" relationship
## relationship does not apply in reverse
## subclass is also called a subset of the superclass.
## Ex: Car is a type of Vehicle
## Subclasses are followed by a symbol and the name of the superclass , BMW < Car


# class Employee

#     attr_accessor :age
#     attr_reader :name

#     def initialize(name,age)
#         @name = name
#         @age = age
#     end

#     def introduce
#         "Hi my name is #{name.capitalize} and I am #{age} years old!"
#     end
# end


# ## Exclusive instance Methods in Subclasses
# class Manager < Employee
#     def yell
#         "I AM THE MANAGER HERE!!!"
#     end
# end

# class Worker < Employee

#     ##overrides superclass method
#     # def introduce
#     #     "I am coming from the Worker subclass"
#     # end

#     def clock_in(time)
#         "Starting my shift at #{time}"
#     end
# end



# bob = Manager.new("bob", 75)
# jill = Worker.new("jill", 45)

# p bob.class
# p bob.introduce
# puts "---------"
# p jill.class
# p jill.introduce

## can check for inheritance
# p Manager.ancestors 
# p Manager < Employee
# p Employee < Manager

# .is_a? method and .instance_of? method
## instance_of returns true when the direct superclass is passed to it. It does not look at ancestor classes
# puts bob.is_a?(Manager)
# puts bob.is_a?(Worker)
# puts bob.is_a?(Employee)
# puts "---jill---"
# puts jill.instance_of?(Employee)
# puts jill.instance_of?(Worker)

# # EXCLUSIVE INSTANCE METHODS
# p bob.yell
# p jill.introduce
# p jill.clock_in("3:00pm")

# SUPER KEYWORD
## finds method/variables from parent class and initializes them within the subclass.
## -> aka copy's the variables/methods to the subclass. 
## super without parentheses
## super w/ parentheses but no arguments
## super with parentheses and with these arguments

# class Employee

#     attr_accessor :age
#     attr_reader :name

#     def initialize(name,age)
#         @name = name
#         @age = age
#     end

#     def introduce
#         "Hi my name is #{name.capitalize} and I am #{age} years old!"
#     end
# end

# ## Exclusive instance Methods in Subclasses
# class Manager < Employee

#     attr_reader :rank
#     def initialize(name,age,rank)
#         super(name,age) ## pulls from parent class so I don't have to rewrite @name = name, etc
#         @rank = rank
#     end
#     def yell
#         "I AM THE MANAGER HERE!!!"
#     end

#     def introduce
#         result = super 
#         result += " I'm also a maanger."
#         result
#     end
# end

# sally = Manager.new("sally", 42, 'VP of IT')
# p sally.rank
# p sally.name
# p sally.age
# p sally.introduce

# class Car

#     attr_reader :maker
#     def initialize(maker)
#         @maker = maker
#     end

#     def drive
#         "VROOM VROOM!"
#     end
# end

# class Firetruck < Car

#     attr_reader :sirens
#     def initialize(maker,sirens)
#         super(maker)
#         @sirens = sirens
#     end
#     def drive(speed)
#         super() + " Beep Beep! I am going #{speed}mph!" ## -> grabs super class variables but ignores speed argument
#     end
# end

# ft = Firetruck.new("Ford", 4)
# p ft.maker
# p ft.drive(45)

## CLASS VARIABLES ACROSS SUBCLASSES

# class Product 
#     @@product_counter = 0

#     ## class method
#     def self.counter 
#         @@product_counter
#     end

#     def initialize
#         @@product_counter += 1
#     end
# end

# class Widget < Product 
#     @@widget_counter = 0

#     def self.counter
#         @@widget_counter
#     end

#     def initialize
#         super
#         @@widget_counter += 1
#     end
# end

# class Thingy < Product

#     @@thingy_counter = 0

#     def self.counter
#         @@thingy_counter
#     end

#     def initialize
#         super
#         @@thingy_counter += 1
#     end
# end

# a = Widget.new
# b = Widget.new

# puts Widget.counter
# puts Product.counter

# c = Thingy.new
# d = Thingy.new
# e = Thingy.new
# puts Thingy.counter
# puts Product.counter

# # SINGLETON CLASSES AND SINGLETON METHODS
# ## singleton methods -> only exists on 1 single instance of an object that we instantiate from a class
# ## are anonymous and can't be seen via .ancestors or .class methods
# class Player
#     def play_game
#         rand(1..100) > 50 ? "Winner" : "Loser!"
#     end
# end

# p bob = Player.new
# p boris = Player.new

# #singleton method
# def boris.play_game 
#     "Winner"
# end

# p boris.singleton_methods # -> returns singleton methods currently attached
# p boris.singleton_class # -> returns singleton class




#     attr_accessor :os, :model, :year
# end


# macbook = Computer.new("iOS", "16-inch Macbook Pro", "2020")
# chromebook = Computer.new("windows", "Chromebook 5.2","2008")
# p "#{macbook.os} | #{macbook.model} | #{macbook.year}"
# p "#{chromebook.os} | #{chromebook.model} | #{chromebook.year}"

# public methods -> allow interaction with an object
## -> can be called by any other object
# private methods -> can only be called within the object
## -> cannot be invoked by another object
## -> cannot be called with an explicit receiver.


# class Gadget
#     attr_writer :password
#     attr_reader :production_number
#     attr_accessor :username

#     def initialize(username, password)
#         @username = username
#         @password = password
#         @production_number = generate_production_number
#     end

#     def to_s
#         "Gadget #{@production_number} has the username #{@username}. 
#         It is made from the #{self.class} class 
#         and it has the ID #{self.object_id}"
#     end

#     private 
#     ##anything written below private will not be accessible from outside the class
#     def generate_production_number #private method
#         start_digits = rand(10000..99999)
#         end_digits = rand(10000..99999)
#         alphabet = ("A".."Z").to_a
#         middle_digits = "2017"
#         5.times { middle_digits << alphabet.sample }
#         "#{start_digits}-#{middle_digits}-#{end_digits}"
#     end
# end

# phone = Gadget.new("user", "password")

# protected methods -> can be invoked only by objects of the same calss.
## -> can be called within the same family of objects
## -> used to compare objects of the same class.

# class Car 

#     def initialize(age, miles)
#         base_value = 20000
#         age_deduction = age * 1000
#         miles_deduction = (miles/10.to_f)
#         @value = base_value - age_deduction - miles_deduction
#     end

#     def compare_car_with(car)
#         self.value > car.value ? "Your car is better!" : "Your car is worse"
#     end

#     protected
#     ##anything written below is a protected method
#     ##can be accessed by other objects of the same class

#     def value
#         @value
#     end
# end

# civic = Car.new(3, 30000)
# fiat = Car.new(1, 20000)

# p civic.compare_car_with(fiat)



# class Gadget
   
#     attr_reader :production_number
#     attr_accessor :username

#     def initialize(username, password)
#         @username = username
#         @password = password
#         @production_number = generate_production_number
#     end

#     def to_s
#         "Gadget #{@production_number} has the username #{@username}. 
#         It is made from the #{self.class} class 
#         and it has the ID #{self.object_id}"
#     end

#     def password=(new_password)
#         @password = new_password if validate_password(new_password)
#     end

#     private 
#     ##anything written below private will not be accessible from outside the class
#     def generate_production_number #private method
#         start_digits = rand(10000..99999)
#         end_digits = rand(10000..99999)
#         alphabet = ("A".."Z").to_a
#         middle_digits = "2017"
#         5.times { middle_digits << alphabet.sample }
#         "#{start_digits}-#{middle_digits}-#{end_digits}"
#     end

#     ## adding validation to setter methods
#     def validate_password(new_password)
#         new_password.is_a?(String) && new_password.length >= 6 && new_password =~ /\d/
#     end
# end

# phone = Gadget.new("user", "password9")

#instance methods vs instance variables
# instead of using @variable use variable to call the instance variable attached to that class.
## - > can't erase self on the class because the word class is a reserved keyword.
# def to_s
#         "Gadget #{production_number} has the username #{username}. 
#         It is made from the #{self.class} class 
#         and it has the ID #{object_id}"
# end

#pseudo-variables -> changed representation of a variable that does not impact the actual value of the original variable.

# Multiple Setter Methods within one method
# class Gadget
   
#     attr_reader :production_number, :apps
#     attr_accessor :username

#     def initialize(username, password)
#         @username = username
#         @password = password
#         @production_number = generate_production_number
#         @apps = []
#     end

#     def to_s
#         "Gadget #{@production_number} has the username #{@username}. 
#         It is made from the #{self.class} class 
#         and it has the ID #{self.object_id}"
#     end

#     def reset(username,password)
#         self.username = username
#         self.password = password
#         self.apps = []
#     end

#     def password=(new_password)
#         @password = new_password if validate_password(new_password)
#     end

#     private 
#     ##anything written below private will not be accessible from outside the class

#     attr_writer :apps 

#     def generate_production_number #private method
#         start_digits = rand(10000..99999)
#         end_digits = rand(10000..99999)
#         alphabet = ("A".."Z").to_a
#         middle_digits = "2017"
#         5.times { middle_digits << alphabet.sample }
#         "#{start_digits}-#{middle_digits}-#{end_digits}"
#     end

#     ## adding validation to setter methods
#     def validate_password(new_password)
#         new_password.is_a?(String) && new_password.length >= 6 && new_password =~ /\d/
#     end


# end

# STRUCTS
## represents a mini-class w/ less functionality than a normal class
## holds just instance variables

# module AppStore
#     App = Struct.new(:name, :developer, :version)
#     APPS = [
#         App.new(:Chat, :facebook, 2.0),
#         App.new(:Twitter, :twitter, 1.0),
#         App.new(:Stocks, :yahoo, 2.54)
#     ]

#     def self.find_app(name)
#         APPS.find { |app| app.name == name}
#     end
# end

# class Gadget
   
#     attr_reader :production_number, :apps
#     attr_accessor :username

#     def initialize(username, password)
#         @username = username
#         @password = password
#         @production_number = generate_production_number
#         @apps = []
#     end

#     def to_s
#         "Gadget #{@production_number} has the username #{@username}. 
#         It is made from the #{self.class} class 
#         and it has the ID #{self.object_id}"
#     end

#     def install_app(name)
#         app = AppStore.find_app(name)
#         @apps << app unless @apps.include?(app)
#     end

#     def delete_app(name)
#         app = apps.find { |installed_app| installed_app.name == name}
#         apps.delete(app) unless app.nil?
#     end

#     def reset(username,password)
#         self.username = username
#         self.password = password
#         self.apps = []
#     end

#     def password=(new_password)
#         @password = new_password if validate_password(new_password)
#     end

#     private 
#     ##anything written below private will not be accessible from outside the class

#     attr_writer :apps 

#     def generate_production_number #private method
#         start_digits = rand(10000..99999)
#         end_digits = rand(10000..99999)
#         alphabet = ("A".."Z").to_a
#         middle_digits = "2017"
#         5.times { middle_digits << alphabet.sample }
#         "#{start_digits}-#{middle_digits}-#{end_digits}"
#     end

#     ## adding validation to setter methods
#     def validate_password(new_password)
#         new_password.is_a?(String) && new_password.length >= 6 && new_password =~ /\d/
#     end
# end

# g = Gadget.new("alex", "password4")
# p g.apps
# puts "---------"
# g.install_app(:Chat)
# p g.apps

# puts "---------"
# g.install_app(:Twitter)
# p g.apps

# puts "---------"
# g.delete_app(:Twitter)
# p g.apps


# MONKEY PATCHING
## modifying features of an class that already exists
## like hashes, Strings, Arrays, etc
## dont accidentaly overwrite already existed methods unless you need to.

# class Array

#     def sum
#         total = 0
#         self.each { |element| total += element if element.is_a?(Numeric)}
#         total
#     end

# end

# p [1,2,3, "hello", nil, 4, 5].sum

# class String
#     def alphabet_sum
#         alphabet = ("a".."z").to_a
#         sum = 0
#         self.downcase.each_char do |character|
#             if alphabet.include?(character)
#                 numeric_value = alphabet.index(character) + 1
#                 sum += numeric_value
#             end
#         end
#         sum
#     end
# end

# puts "heLlo wOrld".alphabet_sum

# class Hash 

#     def identify_duplicate_values
#         values = []
#         dupes = []

#         self.each_value do |value|
#             values.include?(value) ? dupes << value : values << value
#             end
#         dupes.uniq
#     end
# end

# scores = {a: 100, b: 100, c: 89, d: 45, f: 45, h: 6}

# p scores.identify_duplicate_values

## monkey patching , yielding to a block
## -> can monkey patch later in the file and it will affect all objects of that class.
# class Fixnum 

#     def custom_times
#         i = 0
#         while i < self 
#             yield(i + 1)
#             i += 1
#         end
#     end
# end

# 5.times {|i| puts i}
# puts "--------------"
# 5.custom_times {|i| puts i}

# Class Variables & Class Methods
## Class Variables
## -> solves issues of data duplication across instances
## -> belongs to the whole calss rather than to one object.
## -> store information that does not pertain to an instance
## -> begin with @@ sigil
## -> protected by default

## Class Methods
## method available on the class rather than an instance
## contains functionality that does not involve one instance
## can be called even if objects/ instances do not exist
## example -> new method, Hash.new()
## prefixed with the self keyword

## BE CAREFUL! IN AN INSTANCE METHOD DEFINITION, SELF REFERS TO THE OBJECT.

# class Bicycle
    
#     @@maker = "BikeTech" #class variable
#     @@count = 0

#     ##class methods
#     def self.description
#         "Hello, blueprint for bicycle. Use me to create bicycle objects"
#     end

#     def self.count
#         @@count
#     end

#     ##instance methods
#     def maker
#         @@maker
#     end

#     def initialize
#         @@count += 1
#     end
# end

# # puts Bicycle.description
# # puts Bicycle.count
# a = Bicycle.new
# # p a.maker
# b = Bicycle.new
# c = Bicycle.new
# puts Bicycle.count


# INHERITANCE
## a way for a class to obtain all methods from another class
## avoids duplicate code across multiple classes
## class inherited from is called superclass or parent class
## class inheriting is called subclass or child class
## Ruby only supports single inheritance. A Class can only inherit form one other class.
## subclass is a type of the superclass -> "is-a" relationship
## relationship does not apply in reverse
## subclass is also called a subset of the superclass.
## Ex: Car is a type of Vehicle
## Subclasses are followed by a symbol and the name of the superclass , BMW < Car


# class Employee

#     attr_accessor :age
#     attr_reader :name

#     def initialize(name,age)
#         @name = name
#         @age = age
#     end

#     def introduce
#         "Hi my name is #{name.capitalize} and I am #{age} years old!"
#     end
# end


# ## Exclusive instance Methods in Subclasses
# class Manager < Employee
#     def yell
#         "I AM THE MANAGER HERE!!!"
#     end
# end

# class Worker < Employee

#     ##overrides superclass method
#     # def introduce
#     #     "I am coming from the Worker subclass"
#     # end

#     def clock_in(time)
#         "Starting my shift at #{time}"
#     end
# end



# bob = Manager.new("bob", 75)
# jill = Worker.new("jill", 45)

# p bob.class
# p bob.introduce
# puts "---------"
# p jill.class
# p jill.introduce

## can check for inheritance
# p Manager.ancestors 
# p Manager < Employee
# p Employee < Manager

# .is_a? method and .instance_of? method
## instance_of returns true when the direct superclass is passed to it. It does not look at ancestor classes
# puts bob.is_a?(Manager)
# puts bob.is_a?(Worker)
# puts bob.is_a?(Employee)
# puts "---jill---"
# puts jill.instance_of?(Employee)
# puts jill.instance_of?(Worker)

# # EXCLUSIVE INSTANCE METHODS
# p bob.yell
# p jill.introduce
# p jill.clock_in("3:00pm")

# SUPER KEYWORD
## finds method/variables from parent class and initializes them within the subclass.
## -> aka copy's the variables/methods to the subclass. 
## super without parentheses
## super w/ parentheses but no arguments
## super with parentheses and with these arguments

# class Employee

#     attr_accessor :age
#     attr_reader :name

#     def initialize(name,age)
#         @name = name
#         @age = age
#     end

#     def introduce
#         "Hi my name is #{name.capitalize} and I am #{age} years old!"
#     end
# end

# ## Exclusive instance Methods in Subclasses
# class Manager < Employee

#     attr_reader :rank
#     def initialize(name,age,rank)
#         super(name,age) ## pulls from parent class so I don't have to rewrite @name = name, etc
#         @rank = rank
#     end
#     def yell
#         "I AM THE MANAGER HERE!!!"
#     end

#     def introduce
#         result = super 
#         result += " I'm also a maanger."
#         result
#     end
# end

# sally = Manager.new("sally", 42, 'VP of IT')
# p sally.rank
# p sally.name
# p sally.age
# p sally.introduce

# class Car

#     attr_reader :maker
#     def initialize(maker)
#         @maker = maker
#     end

#     def drive
#         "VROOM VROOM!"
#     end
# end

# class Firetruck < Car

#     attr_reader :sirens
#     def initialize(maker,sirens)
#         super(maker)
#         @sirens = sirens
#     end
#     def drive(speed)
#         super() + " Beep Beep! I am going #{speed}mph!" ## -> grabs super class variables but ignores speed argument
#     end
# end

# ft = Firetruck.new("Ford", 4)
# p ft.maker
# p ft.drive(45)

## CLASS VARIABLES ACROSS SUBCLASSES

# class Product 
#     @@product_counter = 0

#     ## class method
#     def self.counter 
#         @@product_counter
#     end

#     def initialize
#         @@product_counter += 1
#     end
# end

# class Widget < Product 
#     @@widget_counter = 0

#     def self.counter
#         @@widget_counter
#     end

#     def initialize
#         super
#         @@widget_counter += 1
#     end
# end

# class Thingy < Product

#     @@thingy_counter = 0

#     def self.counter
#         @@thingy_counter
#     end

#     def initialize
#         super
#         @@thingy_counter += 1
#     end
# end

# a = Widget.new
# b = Widget.new

# puts Widget.counter
# puts Product.counter

# c = Thingy.new
# d = Thingy.new
# e = Thingy.new
# puts Thingy.counter
# puts Product.counter

# # SINGLETON CLASSES AND SINGLETON METHODS
# ## singleton methods -> only exists on 1 single instance of an object that we instantiate from a class
# ## are anonymous and can't be seen via .ancestors or .class methods
# class Player
#     def play_game
#         rand(1..100) > 50 ? "Winner" : "Loser!"
#     end
# end

# p bob = Player.new
# p boris = Player.new

# #singleton method
# def boris.play_game 
#     "Winner"
# end

# p boris.singleton_methods # -> returns singleton methods currently attached
# p boris.singleton_class # -> returns singleton class

# class Candidate
#     attr_accessor :name, :age , :occupation, :hobby, :birthplace
#     def initialize(name,details = {}) # -> settinga default for the details hash
#         defaults = {age: 35, occupation: "Candidate", hobby: "Running", birthplace:"Canada"}
#         defaults.merge!(details)

#         @name = :name
#         @age = defaults[:age]
#         @occupation = defaults[:occupation]
#         @hobby = defaults[:hobby]
#         @birthplace = defaults[:birthplace]
#     end
# end

# senator = Candidate.new("Smith",age: 53, occupation: "Banker", birthplace: "Baltimore")

# p senator.age
# p senator.occupation
# p senator.birthplace
# p senator.hobby


