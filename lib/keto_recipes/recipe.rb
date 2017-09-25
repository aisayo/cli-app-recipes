class Recipe

  attr_accessor :title, :category, :link

  @@all = []

  def self.info
    c_recipe = self.new
    c_recipe.title = "#name"
    c_recipe.category = "chicken"
    c_recipe.link = "url"

    b_recipe = self.new
    b_recipe.title = "#name"
    b_recipe.category = "beef"
    b_recipe.link = "url"

  end

  def self.all
    @@all << self.info
  end



end
