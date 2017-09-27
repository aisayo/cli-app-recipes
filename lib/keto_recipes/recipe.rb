require 'pry'

class Recipe

  attr_accessor :name, :url

  def self.info
    breakfast_recipe = self.new
    breakfast_recipe.name = "#name 1"
    breakfast_recipe.url = "url"

    lunch_recipe = self.new
    lunch_recipe.name = "#name 2"
    lunch_recipe.url = "url"

    dinner_recipe = self.new
    dinner_recipe.name = "#name 3"
    dinner_recipe.url = "url"

    [breakfast_recipe, lunch_recipe, dinner_recipe]

  end


#category selector div.r-swiper-data
#title : div.articleTitle
#link : https://www.ruled.me/keto-recipes/


end
