json.array!(@paintings) do |painting|
  json.extract! painting, :id, :title, :description
  json.url painting_url(painting, format: :json)
end
