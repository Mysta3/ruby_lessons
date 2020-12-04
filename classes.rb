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