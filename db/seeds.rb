# Helpers
def find_stat(pokemon, stat_name)
  pokemon.stats.find { |obj| obj.stat.name == stat_name }.base_stat
end

# Iterate over the first 150 pokemon
(1..150).each do |id|
  data = PokeApi.get(pokemon: id)
  pokemon = Pokemon.create!(
    slug: data.name,
    name: data.name.titleize,
    height: data.height,
    weight: data.weight,
    speed: find_stat(data, 'speed'),
    special_defence: find_stat(data, 'special-defense'),
    special_attack: find_stat(data, 'special-attack'),
    defence: find_stat(data, 'defense'),
    attack: find_stat(data, 'attack'),
    hp: find_stat(data, 'hp')
  )

  data.types.each do |obj|
    genre = Genre.find_or_create_by!(slug: obj.type.name, name: obj.type.name.titleize)
    pokemon.genres << genre
  end
end
