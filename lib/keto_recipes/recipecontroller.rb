require 'pry'
class KetoRecipes::RecipeController

  def call
    puts "Looks like you're feeling hungry =)"
    KetoRecipes::Recipe.scrape_info
    list_categories
    list_recipes
    goodbye
  end

  def list_categories
    puts "What type of meal are you looking for?"
    KetoRecipes::Recipe.all.each.with_index(1) do |category, i|
      puts "#{i}. #{recipe.category}"
    end
    puts ""
  end
    # puts "What are you looking for?"
    # puts "1. Breakfast"
    # puts "2. Lunch"
    # puts "3. Dinner"
    # puts "Enter the number of your selection or type 'exit' to quit."


  def list_recipes

    input = nil

    # recipes = Recipe
    # recipes.each.with_index(1) do |recipe, i|
    #   recipe = "#{i}. #{recipe.name} - #{recipe.url}"
    #   recipe
    while input != "exit"
    input = gets.strip
    if input.to_i == 1
      puts recipe
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


  def goodbye
    puts "Come back and see us when you're hungry again ;)!"
  end



end
