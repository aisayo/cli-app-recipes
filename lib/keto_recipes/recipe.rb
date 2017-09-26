require 'pry'

class Recipe

  attr_accessor :title, :category, :link

  def self.all

    breakfast_recipe = self.new
    breakfast_recipe.title = "#name"
    breakfast_recipe.category = "beef"
    breakfast_recipe.link = "url"

    lunch_recipe = self.new
    lunch_recipe.title = "#name"
    lunch_recipe.category = "chicken"
    lunch_recipe.link = "url"

    dinner_recipe = self.new
    dinner_recipe.title = "#name"
    dinner_recipe.category = "chicken"
    dinner_recipe.link = "url"

    [breakfast_recipe, lunch_recipe, dinner_recipe]

binding.pry
  end



#category selector div.r-swiper-data
#title : div.articleTitle
#link : https://www.ruled.me/keto-recipes/


end
