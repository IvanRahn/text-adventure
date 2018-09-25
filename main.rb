# gem install terminal-basic-menu
require 'terminal-basic-menu'

# Create Menu
menu = Menu.new
menu.header = { text: "Pokemon Text Adventure", color: :red }

# Introduction
body_text = "Welcome to Pokemon conflict, a text adventure where your Generation I Pokemon of choice will battle in a fierce duel."
body_text += "...\n"
body_text += "Please enter your name below."
menu.body = { text: body_text }
menu.display_menu

name = gets.chomp
puts "..."

# Choosing Starter pokemon
body_text = "Thanks for joining Pokeworld today #{name}. You have stumbled into the lab, where professor Oak has created four starter pokemon for you to choose from - 1) Squirtle, 2) Pikachu, 3) Charmander, 4) Bulbasaur."
body_text += "\n"
body_text += "Who do you select? Choose wisely - as your life lies in it's fate.
choice = 0
while choice < 1 || choice > 4
  menu.display_menu
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
end

