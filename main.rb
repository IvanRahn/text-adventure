puts "Welcome to Pokemon conflict, a text adventure where your Generation I Pokemon of choice will battle in a fierce duel."
puts "..."
puts "You have stumbled into the lab, where professor Oak has created four starter pokemon for you to choose from - Squirtle, Pikachu, Charmander, Bulbasaur."
puts
puts "Who do you select? Choose wisely - as your life lies in it's fate."

mypokey = gets.chomp.downcase

if mypokey == "squirtle" then
    puts "You have selected Squirtle, nice choice!"
elsif mypokey == "pikachu" then
    puts "You have selected Pikachu, great choice!"
elsif mypokey == "charmander" then
    puts "You have chosen Charmander, wise choice!"
elsif mypokey == "bulbasaur" then
    puts "you have chosen Bulbasaur, good choice!"
end


