json.array!(@volunteers) do |volunteer|
  json.extract! volunteer, :id, :city_id, :date, :time, :belongings, :note, :contact_id
  json.url volunteer_url(volunteer, format: :json)
end
