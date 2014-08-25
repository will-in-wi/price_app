json.array!(@recipe_items) do |recipe_item|
  json.extract! recipe_item, :id, :recipe, :item, :amount, :unit_id, :notes
  json.url recipe_item_url(recipe_item, format: :json)
end
