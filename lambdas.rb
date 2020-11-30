# identical to procs
## come from Proc class
## can be used anywhere a proc can be used
## created by using the keyword lambda followed by condition
## most used between procs and lambdas
## if you miss an argument, it will throw an error
# squares_lambda = lambda { |num| num ** 2}
# p [1,2,3].map(&squares_lambda)
# p squares_lambda.call(5)

## will return control back to the diet method
# def diet
#     status = lambda {return "you gave in"}
#     status.call
#     "You completed the diet"
# end

# p diet

## define lambdas
# to_euros = lambda  { |dollars| dollars * 0.95}
# to_pesos = lambda  { |dollars| dollars * 20.70}
# to_rupees = lambda { |dollars| dollars * 68.13}

# ## define method that will accept lambdas
# def convert(dollars, currency_lambda)
#     currency_lambda.call(dollars) if dollars.is_a?(Numeric) # -> call lambda to pass in the dollars in order to use it in lambda call.
# end

# ## call method and pass in lambda as argument to be printed
# p convert(1000, to_euros)
# p convert(1000, to_pesos)
# p convert(1000, to_rupees)