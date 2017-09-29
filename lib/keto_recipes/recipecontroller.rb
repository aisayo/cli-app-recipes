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
    KetoRecipes::Recipe.all.each.with_index(1) do |recipe, i|
      puts "#{i}. #{recipe.category}"
    end
  end


  def list_recipes

    input = nil
    while input != "exit"
    input = gets.strip.downcase
    if input == "list"
      list_categories
    elsif input.to_i.between?(0, KetoRecipes::Recipe.all.size)
    selected_recipe = KetoRecipes::Recipe.find_recipe(input)
    puts "#{selected_recipe.title} - #{selected_recipe.post_date} - #{selected_recipe.url}"
    else
      puts "Please type a valid entry. To access the list again, type list or leave the program type 'exit':"
      end
    end
  end


  def goodbye
    puts "Come back and see us when you're hungry again ;)!"
  end



end
