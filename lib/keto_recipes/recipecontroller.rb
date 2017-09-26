require 'pry'
class RecipeController

  def call
    options_list
    list_recipes
    goodbye
  end

  def options_list
    puts "What are you looking for?"
    puts "1. Breakfast"
    puts "2. Lunch"
    puts "3. Dinner"
    puts "Enter the number of your selection or type 'exit' to quit."
    end

  def list_recipes

    input = nil

    @recipes = Recipe.info
    @recipes.each_with_index do |recipe, i|
      recipe = "#{i}. #{recipe.name} - #{recipe.url}"
      recipe

    while input != "exit"
    input = gets.strip
    if input.to_i == 1
      puts recipe[1]
    elsif input.to_i == 2
      puts recipe
    elsif input.to_i == 3
      puts recipe
    elsif input == "list"
      options_list
    else
      puts "Please type a valid entry. To access the list again, type list or leave the program type 'exit':"
      end
    end
  end
end


  def goodbye
    puts "Come back and see us when you're hungry again ;)!"
  end



end
