json.array!(@countries) do |country|
  json.extract! country, :id, :name, :rank, :score, :facts
  json.url country_url(country, format: :json)
end
