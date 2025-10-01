# temperatures.rb
#
# Goal:
#   Work with a list of recorded temperatures. Write a program that:
#     1. Prints how many temperatures are in the list
#     2. Prints the highest and lowest temperature
#     3. Prints the average (rounded to 2 decimal places)
#     4. Prints whether the last temperature is above, below, or equal to the average
#
# Example Output:
#   6 temperatures recorded
#   Highest: 79
#   Lowest: 65
#   Average: 71.33
#   The last recorded temperature (70) is below the average.
#

temperatures = [72, 68, 74, 79, 65, 70]

# 1. How many temperatures?
puts "#{temperatures.count} temperatures recorded"

# 2. Highest and lowest
puts "Highest: #{temperatures.max}"
puts "Lowest: #{temperatures.min}"

# 3. Average
average = temperatures.sum.to_f / temperatures.count
puts "Average: #{average.round(2)}"

# 4. Compare last temp to average
last = temperatures.last

if last > average
  puts "The last recorded temperature (#{last}) is above the average."
elsif last < average
  puts "The last recorded temperature (#{last}) is below the average."
else
  puts "The last recorded temperature (#{last}) is exactly the average."
end
