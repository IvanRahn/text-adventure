

# Introduction
puts "Welcome to our awesome pokemon text adventure."
puts "Please enter your name."
name = gets.chomp

# Choosing Starter pokemon
puts "You are at proffesor Oak's labratory."
puts "There are 3 pokeballs in front of you."
choice = 0
while choice < 1 || choice > 3
  puts "Please choose which pokeball to take. (1-3)"
  choice = gets.chomp.to_i
end
pokemon_choices = ["Squirtle", "Bulbasaur", "Charmeleon"]
chosen_pokemon = pokemon_choices[choice]
puts "You have chosen #{chosen_pokemon}"

puts "You have exited the house where you grew up. In front of you is the street where you spent countless days playing
and enjoying your childhood. The sun is just starting to rise in the East over the majestic Mystical Mountains covered by fog.
To the west you can see the slight outline of the treetops in the Funky Forest. Now with your new pokemon friend
you feel like everything is possible! Which way do you choose to go, east or west?"


case gets.chomp.downcase.to_s
when "east" then puts "Turning your face in the direction of the sun hanging over the horizon you
  head towards the beautifull Mystical Mountains"
when "west" then puts "Feeling the sun on your skin you realize that today is going to be quite hot. Spending the day
  in the treeshade in the Funky Forest might be a good idea. You turn west and begin your journey."
