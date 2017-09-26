
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

    @recipes = Recipe.all
    @recipes.each_with_index do |recipe, index|
      puts "'#{index+1}'. '#{recipe}'"

    while input != "exit"
    input = gets.strip
    if input.to_i.between?(1,3)
      puts @recipes[input.to_i-1]
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
