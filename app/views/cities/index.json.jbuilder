json.array!(@cities) do |city|
  json.extract! city, :id, :name_ja, :name_hira, :name_en, :city_category_id, :latitude, :longitude, :url, :twitter, :wikipedia, :population
  json.url city_url(city, format: :json)
end
