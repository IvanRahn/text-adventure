# gem install terminal-basic-menu
require 'terminal-basic-menu'

# Create Menu
menu = Menu.new(width: 100)
menu.header = { text: "Pokemon Text Adventure", color: :red }
menu.border_color = :green

# Introduction

body_text = "Welcome to Pokemon conflict, a text adventure where your Generation I Pokemon of choice will battle in a fierce duel."
body_text += "...\n"
body_text += "Please enter your name below."
menu.body = { text: body_text, color: :white }
menu.display_menu

name = gets.chomp
sleep(1)
puts "..."
sleep(1)

# Choosing Starter pokemon

body_text = "Thanks for joining Pokeworld today #{name}.\n"
body_text += "You have stumbled into the lab, where professor Oak has created four starter pokemon for you to choose from.\n"
body_text += "Who do you select? Choose wisely - as your life lies in it's fate."
body_choices = ["Squirtle", "Pikachu", "Charmander", "Bulbasaur"]
menu.body = { text: body_text, choices: body_choices, color: :white }

choice = 0
while choice < 1 || choice > 4
  menu.display_menu
  choice = gets.chomp.to_i
end
sleep(1)
pokemon_choices = ["Squirtle", "Bulbasaur", "Charmeleon", "Pikachu"]
mypokey = pokemon_choices[choice]
sleep(1)
puts "You have chosen #{mypokey}, wise choice!\n"
sleep(1)
body_text = "You have exited the house where you grew up. In front of you is the street where you spent countless days playing
and enjoying your childhood. The sun is just starting to rise in the East over the majestic Mystical Mountains covered by fog.
To the west you can see the slight outline of the treetops in the Funky Forest. Now with your new Pokemon friend
you feel like everything is possible! Which way do you choose to go, east or west?"
body_choices = ["East", "West"]
menu.body = { text: body_text, choices: body_choices, color: :white }
menu.display_menu

direction = gets.chomp.downcase
case direction
when "1" || "east" then
  body_text += "Turning your face in the direction of the sun hanging over the horizon you
  head towards the beautifull Mystical Mountains"
  body_text += "You have arrived at Mystical Mountains. You notice that there is something mystical in the air which makes you feel confident for your next battle. You see a path leading up the main mountain which is filled with danger, do you wish to proceed?"
  body_choices = ["Yes", "No"]
  menu.body = { text: body_text, choices: body_choices, color: :white }
  menu.display_menu
  sleep(1)

  case gets.chomp.downcase.to_s
  when "1" || "yes" then body_text = "You decide to continue and start the dangerous climb. You struggle along the way taking a few falls and bruises but your determination to catch them all keeps you going. You arrive at the half way mark when you hear a disturbing noise above you. A WILD POKEMON JUMPED AT YOU...IT'S A MANKEY!!!
    What do you wish to do?"
    body_choices = ["Battle", "Run"]
    menu.body = { text: body_text, choices: body_choices, color: :white }
    menu.display_menu
  when "2" || "no" then
    body_text = "No, grow up and continue your journey!"
    menu.body = { text: body_text, color: :white }
    menu.display_menu
  end
when "2" || "west" then
  body_text = "Feeling the sun on your skin you realize that today is going to be quite hot. Spending the day in the treeshade in the Funky Forest might be a good idea. You turn west and begin your journey."
  menu.body = { text: body_text, color: :white }
  menu.display_menu
end

sleep(5)
puts "...*slow walk through the bright green grass*..."
sleep(5)
puts "WHAT IS THAT?"
sleep(5)
puts "OH NO, IT'S TEAM ROCKET AND THEY HAVE COME TO SPOIL OUR DAY."
sleep(2)
puts "*WUBBAFETTTTTTT*"