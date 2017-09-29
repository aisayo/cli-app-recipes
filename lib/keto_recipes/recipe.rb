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

  def self.find_recipe(i)
    self.all[i.to_i - 1]
  end

  def self.scrape_info
    recipes = []

     recipes << self.scrape_breakfast
    # recipes << self.scrape_lunch
    # recipes << self.scrape_dinner
  end

  def self.scrape_breakfast

    doc = Nokogiri::HTML(open("https://ruled.me/keto-recipes/breakfast/"))
    binding.pry

    breakfast = self.new("title", "date 1", "breakfast", "url")

  end

    # lunch = self.new("title", "date 2", "lunch", "url")
    #
    # dinner = self.new("title", "date 3", "dinner", "url")
    #
    # [breakfast, lunch, dinner]




#category selector div.r-swiper-data
#title : entry-title a href
#link : https://www.ruled.me/keto-recipes/
#post_date : "date published time"

end
