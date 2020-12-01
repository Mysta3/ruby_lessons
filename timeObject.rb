# puts Time.new

# last_may = Time.new(2015,5, 18, 7, 30,12) # Time.new(year, month, day, hour, minutes,seconds) , hour is in 24-hour format
# p last_may

# today = Time.now
# p today.yday # -> day of the year
# p today.wday # -> day of the week , sunday start at 0

# # PREDICATE METHODS
# birthday = Time.new(1989, 5,10)

# p birthday.monday?
# p birthday.tuesday?
# p birthday.wednesday?
# p birthday.thursday?
# p birthday.friday?
# p birthday.saturday?
# p birthday.sunday?

# p birthday.dst? # -> Daylight Savings Time

# ADD OR SUBTRACT TIME BY SECONDS
# start_of_year = Time.new(2016,1,1)
# p start_of_year
# p start_of_year + (60 * 3) # -> adds time in seconds (3 minutes)
# p start_of_year - (60 * 3) # -> subtractss time in seconds (3 minutes)
# p start_of_year - (60 * 3 * 24 * 45) # -> subtractss time in seconds (seconds * min * hours * days)

# def find_day_of_year_by_number(num)
#     # define date and one_day variable (counter)
#     current_date = Time.new(2020, 1, 1)
#     one_day = 60 * 60 * 24 

#     #compare variables 
#     until current_date.yday == num
#         current_date += one_day # increment counter
#     end
#     #return current date
#     current_date
# end

# p find_day_of_year_by_number(365)

# COMPARABLE METHODS
## can do strict equals, inequality checks and between? method
# birthday = Time.new(2016,4,12)
# summer = Time.new(2016, 6, 21)
# independence_day = Time.new(2016, 7, 4)
# winter = Time.new(2016, 12, 21)

# puts summer < birthday  # does summer come before birthday?
# puts summer > birthday  # does summer come after birthday

# puts independence_day.between?(summer, winter) # between?(lower limit, upper limit)


# CONVERT TIME OBJECT TO OTHER OBJECTS
# someday = Time.new(2000,2,15)
# p someday.yday.to_s
# p someday.ctime # -> human readable date returned as string
# p someday.to_a

# CONVERT TIME OBJECT TO FORMATTED STRING
#strftime -> string from time
## google seach ruby strftime and the documentation is there
today = Time.now
p today.strftime("%B %d, %Y")

# %a - The abbreviated weekday name (“Sun”)
# %A - The full weekday name (“Sunday”)
# %b - The abbreviated month name (“Jan”)
# %B - The full month name (“January”)
# %c - The preferred local date and time representation
# %d - Day of the month (01..31)
# %H - Hour of the day, 24-hour clock (00..23)
# %I - Hour of the day, 12-hour clock (01..12)
# %j - Day of the year (001..366)
# %m - Month of the year (01..12)
# %M - Minute of the hour (00..59)
# %p - Meridian indicator (“AM” or “PM”)
# %S - Second of the minute (00..60)
# %U - Week number of the current year, starting with the first Sunday as the first day of the first week (00..53)
# %W - Week number of the current year, starting with the first Monday as the first day of the first week (00..53)
# %w - Day of the week (Sunday is 0, 0..6)
# %x - Preferred representation for the date alone, no time
# %X - Preferred representation for the time alone, no date
# %y - Year without a century (00..99)
# %Y - Year with century
# %Z - Time zone name %% - Literal “%’’ character t = Time.now t.strftime(“Printed on %m/%d/%Y”) #=> “Printed on 04/09/2003” t.strftime(“at %I:%M%p”) #=> “at 08:56AM”

# .parse and .strptime methods

require 'time' # -> loads additional time feature that provides additional functionalities

p Time.parse("2020-12-01") # -> accepts a string argument, converts to a valid time object

p Time.strptime("03-04-2020", "%m-%d-%Y") # -> format how to receive the date data