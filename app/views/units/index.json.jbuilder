json.array!(@units) do |unit|
  json.extract! unit, :id, :unit_category, :amount, :default
  json.url unit_url(unit, format: :json)
end
