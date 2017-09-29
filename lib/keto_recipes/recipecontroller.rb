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
    input = gets.strip
    if input.to_i == 1
      puts "1"
    elsif input.to_i == 2
      puts "2"
    elsif input.to_i == 3
      puts "3"
    elsif input == "list"
      list_categories
    else
      puts "Please type a valid entry. To access the list again, type list or leave the program type 'exit':"
      end
    end
  end


  def goodbye
    puts "Come back and see us when you're hungry again ;)!"
  end



end
