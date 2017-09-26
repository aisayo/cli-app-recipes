require 'pry'
class RecipeController

  def call
    options_list
    menu
    goodbye
  end

  def options_list
    puts "What are you looking for?"
    puts "1. Breakfast"
    puts "2. Lunch"
    puts "3. Dinner"
    puts "Enter the number of your selection or type 'exit' to quit."
    end

  def menu

    input = nil

    @recipes = Recipe.info
    @recipes.each do |recipe|
      recipe.each do |selected_recipe, index|
      selected_recipe = "#{index+1}. #{recipe.name} - #{recipe.url}"
      binding.pry
      puts selected_recipe

    while input != "exit"
    input = gets.strip
    if input.to_i.between?(1,3)
      puts selected_recipe
    elsif input == "list"
      options_list
    else
      puts "Please type a valid entry. To access the list again, type list or leave the program type 'exit':"
      end
    end
  end
end
end


  def goodbye
    puts "Come back and see us when you're hungry again ;)!"
  end



end
