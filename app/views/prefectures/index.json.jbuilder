json.array!(@prefectures) do |prefecture|
  json.extract! prefecture, :id, :name_ja, :name_hira, :name_en, :latitude, :longitude, :population, :url, :twitter, :tel, :wikipedia
  json.url prefecture_url(prefecture, format: :json)
end
