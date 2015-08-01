json.array!(@bugtraqs) do |bugtraq|
  json.extract! bugtraq, :name, :incep_date, :target_date, :desc, :tags, :priority, :bug, :fix, :sourcefile, :remediated
  json.url bugtraq_url(bugtraq, format: :json)
end
