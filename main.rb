

# Introduction
puts "Welcome to Pokemon conflict, a text adventure where your Generation I Pokemon of choice will battle in a fierce duel."
puts "..."
puts "Please enter your name."
name = gets.chomp
puts "..."

# Choosing Starter pokemon
puts "Thanks for joining Pokeworld today #{name}. You have stumbled into the lab, where professor Oak has created four starter pokemon for you to choose from - 1) Squirtle, 2) Pikachu, 3) Charmander, 4) Bulbasaur."
puts
puts "Who do you select? Choose wisely - as your life lies in it's fate."
    
choice = 0
while choice < 1 || choice > 4
  puts "Please choose which pokeball to take. (1-4)"
  choice = gets.chomp.to_i
end
pokemon_choices = ["Squirtle", "Bulbasaur", "Charmeleon", "Pikachu"]
mypokey = pokemon_choices[choice]
puts "You have chosen #{mypokey}, wise choice!"

puts "You have exited the house where you grew up. In front of you is the street where you spent countless days playing
and enjoying your childhood. The sun is just starting to rise in the East over the majestic Mystical Mountains covered by fog.
To the west you can see the slight outline of the treetops in the Funky Forest. Now with your new pokemon friend
you feel like everything is possible! Which way do you choose to go, east or west?"

case gets.chomp.downcase.to_s
when "east" then puts "Turning your face in the direction of the sun hanging over the horizon you
  head towards the beautifull Mystical Mountains"
when "west" then puts "Feeling the sun on your skin you realize that today is going to be quite hot. Spending the day
  in the treeshade in the Funky Forest might be a good idea. You turn west and begin your journey."