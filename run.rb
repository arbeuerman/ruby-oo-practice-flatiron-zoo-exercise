require_relative "lib/Animal.rb"
require_relative "lib/Zoo.rb"
require 'pry'


#Test your code here

chicago_lincoln_park = Zoo.new("Lincoln Park Zoo","Lincoln Park")
san_diego_zoo = Zoo.new("San Diego Zoo", "San Diego")
second_SD_zoo = Zoo.new("San Diego Zoo", "San Diego")


lion = Animal.new("Big Cat", 420, "Sally", chicago_lincoln_park)
dolphin = Animal.new("Bottle Nosed Dolphin", 1000, "Bob", san_diego_zoo)
lion_1 = Animal.new("Big Cat", 420, "Riley", chicago_lincoln_park)
binding.pry
puts "done"
