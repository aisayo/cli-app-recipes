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
  end

  def menu
    input = nil
    while input != "exit"
    puts "Enter the number of your selection or type 'exit' to quit. To access the list again, type list:"
    input = gets.strip
      case input
      when "1"
        puts "recipe 1"
      when "2"
        puts "recipe 2"
      when "3"
        puts "recipe 3"
      when "list"
        options_list
      else
        puts "Please type a valid entry. To leave the program type 'exit':"
      end
    end
  end

  def goodbye
    puts "Goodbye!"
  end



end
