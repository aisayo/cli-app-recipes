class RecipeController

def call
  greeting
  menu
  goodbye
end

def greeting
  puts "Welcome!!! Here are your options, anytime you would like to quit the program enter 'exit'"
  puts "1. Breakfast/ 2. Lunch/ 3. Dinner"
end

def menu

  user_input = nil

  while user_input == true
    user_input = gets.chomp.to_i
  end



if user_input == 1
   puts "breakfast"
elsif user_input == 2
   puts "lunch"
 elsif user_input == 3
   puts "dinner"
else
   puts "Please enter a valid number"
end

  # case input
  # when "1"
  #   puts "breakfast option"
  #   break
  # when "2"
  #   puts "lunch"
  #   break
  # when "3"
  #   puts "dinner"
  #   break
  # else
  #   puts "Please make sure to select numbers 1-3:"
  # end
end

def goodbye
  puts "Come see us again!"
end

end
