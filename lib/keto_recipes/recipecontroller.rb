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
    puts "Enter the number of your selection or type 'exit' to quit:"
    input = nil
    while input != "exit"
    input = gets.strip
      case input
      when "1"
        puts "recipe 1"
      when "2"
        puts "recipe 2"
      when "3"
        puts "recipe 3"
      end
    end
  end

  def goodbye
    puts "Goodbye!"
  end



end
