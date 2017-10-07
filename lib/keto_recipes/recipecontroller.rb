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
    puts "If at anytime you would like to access the list again, type list or leave the program type 'exit':"
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
    selected_category = KetoRecipes::Recipe.find_recipe(input)
    puts "#{selected_category.title}"
    else
      puts "Please type a valid entry. "
      end
    end
  end


  def goodbye
    puts "Come back and see us when you're hungry again ;)!"
  end



end
