json.array!(@venue_infos) do |venue_info|
  json.extract! venue_info, :name, :description, :picture
  json.url venue_info_url(venue_info, format: :json)
end
