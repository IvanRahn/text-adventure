# gem install terminal-basic-menu
require 'terminal-basic-menu'

# Create Menu
menu = Menu.new(width: 100)
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
body_text = "Thanks for joining Pokeworld today #{name}.\n"
body_text += "You have stumbled into the lab, where professor Oak has created four starter pokemon for you to choose from.\n"
body_text += "Who do you select? Choose wisely - as your life lies in it's fate."
body_choices = ["Squirtle", "Pikachu", "Charmander", "Bulbasaur"]
menu.body = { text: body_text, choices: body_choices }

choice = 0
while choice < 1 || choice > 4
  menu.display_menu
  choice = gets.chomp.to_i
end
pokemon_choices = ["Squirtle", "Bulbasaur", "Charmeleon", "Pikachu"]
mypokey = pokemon_choices[choice]

puts "You have chosen #{mypokey}, wise choice!\n"

body_text = "You have exited the house where you grew up. In front of you is the street where you spent countless days playing
and enjoying your childhood. The sun is just starting to rise in the East over the majestic Mystical Mountains covered by fog.
To the west you can see the slight outline of the treetops in the Funky Forest. Now with your new Pokemon friend
you feel like everything is possible! Which way do you choose to go, east or west?"
menu.body = { text: body_text }
menu.display_menu

direction = gets.chomp
case direction
when "east" then
  puts "Turning your face in the direction of the sun hanging over the horizon, you head towards the beautiful Mystical Mountains"
  puts "You have arrived at Mystical Mountains. You notice that there is something mystical in the air which makes you feel confident for your first battle. You see a path leading up the main mountain which is filled with danger, do you wish to proceed?"
  case gets.chomp.downcase.to_s
  when "yes" then puts" You decide to continue and start the dangerous climb. You struggle along the way taking a few falls and bruises but your determination to catch them all keeps you going. You arrive at the half way mark when you hear a disturbing noise above you. A WILD POKEMON JUMPED AT YOU...IT'S A MANKEY!!!
  What do you wish to do? Battle or run?"
  when "no" then puts "No, grow up and continue your journey!"
  end
when "west" then puts "Feeling the sun on your skin you realize that today is going to be quite hot. Spending the day in the treeshade in the Funky Forest might be a good idea. You turn west and begin your journey."
end

sleep(5)
puts "...*slow walk through the bright green grass*..."
sleep(5)
puts "WHAT IS THAT?"
sleep(5)
puts "OH NO, IT'S TEAM ROCKET AND THEY HAVE COME TO SPOIL OUR DAY."
sleep(2)
puts "*WUBBAFETTTTTTT*"