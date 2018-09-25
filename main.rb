puts "You have exited the house where you grew up. In front of you is the street where you spent countless days playing
and enjoying your childhood. The sun is just starting to rise in the East over the majestic Mystical Mountains covered by fog.
To the west you can see the slight outline of the treetops in the Funky Forest. Now with your new pokemon friend
you feel like everything is possible! Which way do you choose to go, east or west?"


case gets.chomp.downcase.to_s
when "east" then puts "Turning your face in the direction of the sun hanging over the horizon you
  head towards the beautifull Mystical Mountains"
when "west" then puts "Feeling the sun on your skin you realize that today is going to be quite hot. Spending the day
  in the treeshade in the Funky Forest might be a good idea. You turn west and begin your journey."
