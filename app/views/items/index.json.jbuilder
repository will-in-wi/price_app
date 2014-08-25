json.array!(@items) do |item|
  json.extract! item, :id, :unit_category, :price_per_unit, :name, :store, :price_last_updated, :notes
  json.url item_url(item, format: :json)
end
