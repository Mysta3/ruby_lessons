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

class Computer
    def initialize(os, model, year)
        @os = os
        @model = model
        @year = year
    end

    attr_accessor :os, :model, :year
end


macbook = Computer.new("iOS", "16-inch Macbook Pro", "2020")
chromebook = Computer.new("windows", "Chromebook 5.2","2008")
p "#{macbook.os} | #{macbook.model} | #{macbook.year}"
p "#{chromebook.os} | #{chromebook.model} | #{chromebook.year}"