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
