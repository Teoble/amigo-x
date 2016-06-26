json.array!(@murals) do |mural|
  json.extract! mural, :id, :mensagem
  json.url mural_url(mural, format: :json)
end
