require 'pry'

class KetoRecipes::Recipe
  attr_accessor :title, :post_date, :category

  @@all = []

  def self.all
    @@all
  end

  def save
    @@all << self
  end

  def self.scrape_info

    breakfast = self.new
    breakfast.title = "title"
    breakfast.post_date = "date 1"
    breakfast.category = "breakfast"

    lunch = self.new
    lunch.title = "title"
    lunch.post_date = "date 2"
    lunch.category = "lunch"

    dinner = self.new
    dinner.title = "title"
    dinner.post_date = "date 3"
    dinner.category = "dinner"

    [breakfast, lunch, dinner]

  end

#category selector div.r-swiper-data
#title : div.articleTitle
#link : https://www.ruled.me/keto-recipes/


end
