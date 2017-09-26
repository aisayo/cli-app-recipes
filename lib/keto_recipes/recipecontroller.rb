
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

    @recipes = Recipe.all

  end

  def menu
    input = nil
    while input != "exit"
    puts "Enter the number of your selection or type 'exit' to quit. To access the list again, type list:"
    input = gets.strip
    if input.to_i.between?(1, 3)
      puts @recipes[input.to_i-1]
    elsif input == "list"
      options_list
      else
        puts "Please type a valid entry. To leave the program type 'exit':"
      end
    end
  end

  def breakfast
  end

  def lunch
  end

  def dinner
  end

  def goodbye
    puts "Come back and see us when you're hungry again ;)!"
  end



end
