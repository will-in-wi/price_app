class Recipe < ActiveRecord::Base
  has_many :recipe_items
end
