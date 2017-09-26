require 'pry'

class Recipe

  attr_accessor :name, :category, :url

  def self.scraped_info
    breakfast_recipe = self.new
    breakfast_recipe.name = "#name"
    breakfast_recipe.category = "beef"
    breakfast_recipe.url = "url"

    lunch_recipe = self.new
    lunch_recipe.name = "#name"
    lunch_recipe.category = "chicken"
    lunch_recipe.url = "url"

    dinner_recipe = self.new
    dinner_recipe.name = "#name"
    dinner_recipe.category = "bleh"
    dinner_recipe.url = "url"

    [breakfast_recipe, lunch_recipe, dinner_recipe]
  end


#category selector div.r-swiper-data
#title : div.articleTitle
#link : https://www.ruled.me/keto-recipes/


end
