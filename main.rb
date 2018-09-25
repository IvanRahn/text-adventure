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
system("clear")
menu.display_menu

name = gets.chomp
sleep(1)
puts "..."
sleep(1)

# Choosing Starter pokemon

body_text = "Thanks for joining Pokeworld today #{name}.\n"
body_text += "You have stumbled into the lab, where professor Oak has created four starter pokemon for you to choose from.\n"
body_text += "Who do you select? Choose wisely - as your life lies in it's fate."
body_choices = ["Squirtle", "Bulbasaur", "Charmeleon", "Pikachu"]
menu.body = { text: body_text, choices: body_choices, color: :white }

choice = 0
while choice < 1 || choice > 4
  system("clear")
  menu.display_menu
  choice = gets.chomp.to_i
end
system("clear")
sleep(1)
mypokey = body_choices[choice - 1]
sleep(1)
puts "You have chosen #{mypokey}, wise choice!\n"
sleep(1)
system("clear")
body_text = "You have exited the house where you grew up. In front of you is the street where you spent countless days playing \
and enjoying your childhood. The sun is just starting to rise in the East over the majestic Mystical Mountains covered by fog. \
To the west you can see the slight outline of the treetops in the Funky Forest. Now with your new Pokemon friend \
you feel like everything is possible! Which way do you choose to go, east or west?"
body_choices = ["East", "West"]
menu.body = { text: body_text, choices: body_choices, color: :white }
menu.display_menu

direction = gets.chomp.downcase
case direction
when "1", "east" then

  body_text += "Turning your face in the direction of the sun hanging over the horizon you"

  body_text += "Turning your face in the direction of the sun hanging over the horizon you \
  head towards the beautifull Mystical Mountains"
  body_text += "You have arrived at Mystical Mountains. You notice that there is something mystical in the air which makes you feel confident for your next battle. You see a path leading up the main mountain which is filled with danger, do you wish to proceed?"
  body_choices = ["Yes", "No"]
  menu.body = { text: body_text, choices: body_choices, color: :white }
  menu.display_menu
  sleep(1)

  case gets.chomp.downcase.to_s

  when "1", "yes" then body_text = "You decide to continue and start the dangerous climb. You struggle along the way taking a few falls and bruises but your determination to catch them all keeps you going. You arrive at the half way mark when you hear a disturbing noise above you. A WILD POKEMON JUMPED AT YOU...IT'S A MANKEY!!! What do you wish to do?" 
    body_choices = ["Battle", "Run"]
    menu.body = { text: body_text, choices: body_choices, color: :white }
    menu.display_menu 
  gets.chomp.downcase.to_s

  when "1", "yes" then
    body_text = "You decide to continue and start the dangerous climb. You struggle along the way taking a few falls and bruises but your determination to catch them all keeps you going. You arrive at the half way mark when you hear a disturbing noise above you. A WILD POKEMON JUMPED AT YOU...IT'S A MANKEY!!!
    What do you wish to do?"
    body_choices = ["Battle", "Run"]
    menu.body = { text: body_text, choices: body_choices, color: :white }
    system("clear")
    menu.display_menu

  when "2", "no" then
    body_text = "No, grow up and continue your journey!"
    menu.body = { text: body_text, color: :white }
    system("clear")
    menu.display_menu
  end
when "2", "west" then
  body_text = "Feeling the sun on your skin you realize that today is going to be quite hot. Spending the day in the treeshade in the Funky Forest might be a good idea. You turn west and begin your journey."
  menu.body = { text: body_text, color: :white }
  system("clear")
  menu.display_menu
sleep(1)
body_text += "You have arrived in the Funky Forest. The shade is a nice relief from the sun and you can feel the\
smell the forest is famous for. Walking down the path you see a patch of tall grass on the side.
Do you want to continue down the path or enter the tall grass?"
body_choices = ["Continue", "Enter the tall grass"]
menu.body = { text: body_text, choices: body_choices, color: :white }
menu.display_menu
case gets.chomp.downcase
when "1", "Continue"
  body_text = "You continue down the shady forest path"
when "2", "Enter the tall grass"
  body_text = "The grass is almost as tall as you!"
  sleep(1)
  body_text += "Walking around the tall grass you hear some rustling. What could it be?"
  sleep(1)
  body_text += "..."
  sleep(1)
  body_text += "You have encoutered a wild Ratata! What are you going to do?"
  body_choices = ["Run", "Fight"]
  menu.body = { text: body_text, choices: body_choices, color: :white }
  menu.display_menu
end
end


sleep(3)

sleep(5)
system("clear")

puts "...*slow walk through the bright green grass*..."
sleep(3)
puts "WHAT IS THAT?"
sleep(3)
puts "OH NO, IT'S TEAM ROCKET AND THEY HAVE COME TO SPOIL OUR DAY."
sleep(2)

puts "*WUBBAFETTTTTTT*" 
puts "GAME OVER" 
sleep (2) 
puts "...?" 
sleep(2) 
puts "Try again?" 
case gets.chomp.downcase.to_s
when "1", "yes" then body_text = "A Charizard comes out of nowhere and blasts Team Rocket to Never Land. You decide to ignore them and continue your journey. You start the dangerous climb and struggle along the way taking a few falls and bruises but your determination to catch them all keeps you going. You arrive at the half way mark when you hear a disturbing noise above you. A WILD POKEMON JUMPED AT YOU...IT'S A MANKEY!!!
  What do you wish to do?"
  body_choices = ["Battle", "Run"]
  menu.body = { text: body_text, choices: body_choices, color: :white }
  menu.display_menu
when "2", "no" then
  body_text = "Team Rocket Wins ¯\\_(ツ)_/¯ "
  menu.body = { text: body_text, color: :white }
  menu.display_menu
end

puts "Do you want to (1) run or (2) stay and fight?"
fightorflight = gets.chomp.to_i
if fightorflight == 1 then
  puts "You've sprinted back to the split, I guess the only way for you to go is through the scorching heat into the Mystical Mountain."
elsif fightorflight == 2 then
  puts "Prepare for trouble!"
  puts "And make it double!"
  puts "To protect the world from devastation!"
  sleep(0.7)
  puts "To unite all peoples within our nation!"
  sleep(0.7)
  puts "To denounce the evils of truth and love!"
  sleep(0.7)
  puts "To extend our reach to the stars above!"
  sleep(0.7)
  puts "Jessie!"
  sleep(0.7)
  puts "James!"
  sleep(0.7)
  puts "Team Rocket blasts off at the speed of light!"
  sleep(0.7)
  puts "Surrender now, or prepare to fight!"
  sleep(0.7)
  puts
  puts "Meowth!"
  sleep(0.7)
  puts "That's right!"
  sleep(3)
  puts "*WUBBAFETTTTTTT*"
end

