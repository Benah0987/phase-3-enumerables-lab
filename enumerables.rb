

# this method returns an array of hashes, which we'll use in the other methods
def spicy_foods 
  [
    { name: 'Green Curry', cuisine: 'Thai', heat_level: 9 },
    { name: 'Buffalo Wings', cuisine: 'American', heat_level: 3 },
    { name: 'Mapo Tofu', cuisine: 'Sichuan', heat_level: 6 }
  ]
end

# given an array of spicy foods, **return an array of strings**
# with the names of each spicy food
def get_names(spicy_foods)
  # your code here
  spicy_foods.map do |food|
    food[:name]
  end
end
names = get_names(spicy_foods)
puts names

# given an array of spicy foods, **return an array of hashes** 
# where the heat level of the food is greater than 5
def spiciest_foods(spicy_foods)
  # your code here
  #use select to iterate
  spicy_foods.select do  |food|
    # conditiion 
    food[:heat_level] > 5
  end
end
# store the new array
very_spicy = spiciest_foods(spicy_foods)
puts very_spicy

# given an array of spicy foods, **output to the terminal**
# each spicy food in the following format: 
# Buffalo Wings (American) | Heat Level: 🌶🌶🌶
# HINT: you can use * with a string to produce the correct number of 🌶 emoji. 
# "hello" * 3 == "hellohellohello"
def print_spicy_foods(spicy_foods)
  # your code here
  # used each
  spicy_foods.each do |food|
    heat_level = "🌶" * food[:heat_level]
    
    puts "#{food[:name]} (#{food[:cuisine]}) | Heat Level: #{heat_level}"
    end
  end
print_spicy_foods(spicy_foods)

# given an array of spicy foods and a string representing a cuisine, **return a single hash**  
# for the spicy food whose cuisine matches the cuisine being passed to the method
def get_spicy_food_by_cuisine(spicy_foods, cuisine)
  # your code here
  # use find 
  spicy_foods.find {|food| food[:cuisine] == cuisine}
  

end
find_food = get_spicy_food_by_cuisine(spicy_foods, 'Thai')
puts find_food

# Given an array of spicy foods, **return an array of hashes** 
# sorted by heat level from lowest to highest
def sort_by_heat(spicy_foods)
  # your code here
  #  sort the array based on the heat
  spicy_foods.sort_by {|food| food[:heat_level]}
  
end
sorted_foods = sort_by_heat(spicy_foods)
puts sorted_foods

# given an array of spicy foods, output to the terminal ONLY 
# the spicy foods that have a heat level greater than 5, in the following format: 
# Buffalo Wings (American) | Heat Level: 🌶🌶🌶
# HINT: Try to use methods you've already written to solve this!
def print_spiciest_foods(spicy_foods)
  spiciest_foods = spicy_foods.select { |food| food[:heat_level] > 5 }
  print_spicy_foods(spiciest_foods)
end

def print_spicy_foods(spicy_foods)
  spicy_foods.each do |food|
    heat_level = "🌶" * food[:heat_level]
    puts "#{food[:name]} (#{food[:cuisine]}) | Heat Level: #{heat_level}"
  end
end


# given an array of spicy foods, return an integer representing 
# the average heat level of all the spicy foods in the array
def average_heat_level(spicy_foods)
  # reduce method is used to calculate the sum of all the heat levels 
  total_heat_level = spicy_foods.reduce(0) { |sum, food| sum + food[:heat_level] }
  # to_f to ensure the division is performed as a floating-point operation
  average = total_heat_level.to_f / spicy_foods.length
  # round method to roundoff
  average.round
end

average = average_heat_level(spicy_foods)
puts average