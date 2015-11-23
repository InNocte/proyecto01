json.array!(@videojuegoclases) do |videojuegoclase|
  json.extract! videojuegoclase, :id, :videojuego_id, :clase_id
  json.url videojuegoclase_url(videojuegoclase, format: :json)
end
