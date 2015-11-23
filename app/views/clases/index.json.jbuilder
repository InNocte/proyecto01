json.array!(@clases) do |clase|
  json.extract! clase, :id, :genero, :plataforma, :multijugador
  json.url clase_url(clase, format: :json)
end
