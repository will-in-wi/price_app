class RecipeItem < ActiveRecord::Base
  belongs_to :recipe
  belongs_to :item
end
