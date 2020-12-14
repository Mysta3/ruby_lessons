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

class Gadget
    def initialize #-> private method
        @username = "User #{rand(1..100)}"
        @password = "topsecret"
        @production_number = "#{("a".."z").to_a.sample} - #{rand(1..100)} }"
    end

    def info
        "Gadget #{@production_number} has the username #{@username}"
    end

    #shortcut accessor method
    attr_accessor :username # read + write access
    # def username
    #     @username
    # end
    # def username=(new_username)
    #     @username = new_username
    # end

    attr_reader :production_number # only read access
    # def production_number
    #     @production_number
    # end
    attr_writer :password # only write access
    # def password=(new_password)
    #     @password = new_password
    # end    
end

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

class Candidate
    attr_accessor :name, :age , :occupation, :hobby, :birthplace
    def initialize(name,details = {}) # -> settinga default for the details hash
        defaults = {age: 35, occupation: "Candidate", hobby: "Running", birthplace:"Canada"}
        defaults.merge!(details)

        @name = :name
        @age = defaults[:age]
        @occupation = defaults[:occupation]
        @hobby = defaults[:hobby]
        @birthplace = defaults[:birthplace]
    end
end

senator = Candidate.new("Smith",age: 53, occupation: "Banker", birthplace: "Baltimore")

p senator.age
p senator.occupation
p senator.birthplace
p senator.hobby