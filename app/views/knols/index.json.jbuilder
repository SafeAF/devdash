json.array!(@knols) do |knol|
  json.extract! knol, :date, :name, :tags, :desc, :instructions, :knowledge, :examples
  json.url knol_url(knol, format: :json)
end
