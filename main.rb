# gem install terminal-basic-menu
require 'terminal-basic-menu'

# Create Menu
menu = Menu.new
menu.header = { text: "Pokemon Text Adventure", color: :red }

# Introduction
body_text = "Welcome to our awesome pokemon text adventure.\n"
body_text += "Please enter your name below."
menu.body = { text: body_text }
menu.display_menu
name = gets.chomp

# Choosing Starter pokemon
body_text = "You are at proffesor Oak's labratory."
body_text += "There are 3 pokeballs in front of you."
body_text += "Please choose which pokeball to take. (1-3)"
choice = 0
while choice < 1 || choice > 3
  menu.display_menu
  choice = gets.chomp.to_i
end
pokemon_choices = ["Squirtle", "Bulbasaur", "Charmeleon"]
chosen_pokemon = pokemon_choices[choice]
puts "You have chosen #{chosen_pokemon}"