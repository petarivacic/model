json.array!(@venues) do |venue|
  json.extract! venue, 
  json.url venue_url(venue, format: :json)
end
