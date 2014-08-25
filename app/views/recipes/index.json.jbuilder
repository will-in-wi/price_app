json.array!(@recipes) do |recipe|
  json.extract! recipe, :id, :name, :notes
  json.url recipe_url(recipe, format: :json)
end
