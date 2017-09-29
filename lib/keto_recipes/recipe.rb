require 'pry'

class KetoRecipes::Recipe
  attr_accessor :title, :post_date, :category, :url
  @@all = []

  def initialize(title, post_date, category, url)
    @title = title
    @post_date = post_date
    @category = category
    @url = url
    @@all << self
  end

  def self.all
    @@all
  end

  def save
    @@all << self.scrape_info
  end

  def self.scrape_info

    breakfast = self.new("title", "date 1", "breakfast", "url")

    lunch = self.new("title", "date 1", "lunch", "url")

    dinner = self.new("title", "date 1", "dinner", "url")

    [breakfast, lunch, dinner]

  end


#category selector div.r-swiper-data
#title : div.articleTitle
#link : https://www.ruled.me/keto-recipes/

end
