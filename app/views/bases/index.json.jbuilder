json.array!(@bases) do |basis|
  json.extract! basis, :id, :name, :tags, :date, :examples, :knowledge, :instructions
  json.url basis_url(basis, format: :json)
end
