class RecipeController

def call
  greeting
  recipe
end

def greeting
  puts "Hey there! What are you looking for?"
  puts "1. Breakfast"
  puts "2. Lunch"
  puts "3. Dinner"
end

def recipe

  input = gets.strip

  case input
  when "1"
    puts "you should get a breakfast option"
  when "2"
    puts "how about lunch"
  when "3"
    puts "Dinner it is"
  end
end


def goodbye
  puts "Come back when you're feeling hungry again!!!"
end

end











#   def call
#     greeting
#     menu_list
#     goodbye
#   end
#
#   def greeting
#     puts "Welcome to your keto menu! To access menu, type 'menu':"
#     input = gets.strip
#       case input
#       when "menu"
#       menu_list
#       end
#
#       @recipe = Recipe.all
#
#   end
#
#   def menu_list
#
#
#     input = nil
#
#     while input != "exit"
#     puts "What are you in the mood for today?"
#     puts "Type '1' for chicken or '2' for beef, to quit the program, enter 'exit':"
#     input = gets.strip.to_i-1
#     if input > 0
#       puts @recipe[input+1]
#     else
#       puts "Please select a valid entry:"
#     end
#   end
#
#           # case input
#           # when "1"
#           #   chicken_recipe
#           # when "2"
#           #   beef_recipe
#           # when "exit"
#           #   puts "See you back next week for more recipes!"
#           # end
#     end
#
#       # def chicken_recipe
#       #   recipe = "https://ketodietapp.com/Blog/post/2015/04/12/bbq-chicken-pizza-soup"
#       #   puts recipe
#       # end
#       #
#       # def beef_recipe
#       #   recipe = "https://ketodietapp.com/Blog/post/2013/11/09/Pumpkin-Beef-Sautee"
#       #   puts recipe
#       # end
#
#       def goodbye
#         puts "Come back again!!"
#       end
#
# end
