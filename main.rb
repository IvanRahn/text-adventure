# Introduction
puts "Welcome to Pokemon conflict, a text adventure where your Generation I Pokemon of choice will battle in a fierce duel."
sleep(1)
puts "..."
sleep(1)
puts "Please enter your name."
name = gets.chomp
puts "..."
sleep(1)

# Choosing Starter pokemon
puts "Thanks for joining Pokeworld today #{name}. You have stumbled into the lab, where professor Oak has created four starter pokemon for you to choose from - 1) Squirtle, 2) Pikachu, 3) Charmander, 4) Bulbasaur."
puts
sleep(1)
puts "Who do you select? Choose wisely - as your life lies in it's fate."
choice = 0
while choice < 1 || choice > 4
  puts "Please choose which pokeball to take. (1-4)"
  choice = gets.chomp.to_i
end
pokemon_choices = ["Squirtle", "Bulbasaur", "Charmeleon", "Pikachu"]
mypokey = pokemon_choices[choice]
puts "You have chosen #{mypokey}, wise choice!"
sleep(1)
puts "You have exited the house where you grew up. In front of you is the street where you spent countless days playing
and enjoying your childhood. The sun is just starting to rise in the East over the majestic Mystical Mountains covered by fog.
To the west you can see the slight outline of the treetops in the Funky Forest. Now with your new pokemon friend
you feel like everything is possible! Which way do you choose to go, east or west?"
  sleep(1)
direction = gets.chomp
case direction
when "east" then
  puts "Turning your face in the direction of the sun hanging over the horizon you
  head towards the beautifull Mystical Mountains"
  puts "You have arrived at Mystical Mountains. You notice that there is something mystical in the air which makes you feel confident for your next battle. You see a path leading up the main mountain which is filled with danger, do you wish to proceed?"
  sleep(1)

  case gets.chomp.downcase.to_s
  when "yes" then puts" You decide to continue and start the dangerous climb. You struggle along the way taking a few falls and bruises but your determination to catch them all keeps you going. You arrive at the half way mark when you hear a disturbing noise above you. A WILD POKEMON JUMPED AT YOU...IT'S A MANKEY!!!
  What do you wish to do? Battle or run?"
  when "no" then puts "No, grow up and continue your journey!"
  end
when "west" then puts "Feeling the sun on your skin you realize that today is going to be quite hot. Spending the day in the treeshade in the Funky Forest might be a good idea. You turn west and begin your journey."
end
