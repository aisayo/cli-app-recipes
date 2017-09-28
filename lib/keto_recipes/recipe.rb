require 'pry'

class Recipe
  attr_accessor :name, :post_date, :meal_type

  @@all = []

  def self.all
    @@all
  end

  def save
    @@all << self
  end

  def self.scrape_info

    breakfast = self.new
    breakfast.name = "#name 1"
    breakfast.url = "url"

    lunch = self.new
    lunch.name = "#name 2"
    lunch.url = "url"

    dinner = self.new
    dinner.name = "#name 3"
    dinner.url = "url"

    [breakfast, lunch, dinner]

  end


#category selector div.r-swiper-data
#title : div.articleTitle
#link : https://www.ruled.me/keto-recipes/


end
