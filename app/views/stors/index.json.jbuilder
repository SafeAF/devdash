json.array!(@stors) do |stor|
  json.extract! stor, :name, :tags, :upload_date, :upload_file
  json.url stor_url(stor, format: :json)
end
