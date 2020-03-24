# Iterate over the first 150 pokemon
(1..150).each do |id|
  data = PokeApi.get(pokemon: id)
  Pokemon.create!(
    slug: data.name,
    name: data.name.titleize
  )
end
