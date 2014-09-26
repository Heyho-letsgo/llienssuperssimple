json.array!(@agences) do |agence|
  json.extract! agence, :id, :nom, :principalgroupe_id, :sousgroupe_id
  json.url agence_url(agence, format: :json)
end
