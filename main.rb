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