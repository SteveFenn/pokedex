require 'rails_helper'

RSpec.describe Types::PokemonType, type: :graphql do
  describe 'pokemon type data' do
    before do
      @query = <<-GRAPHQL
        query getPokemon($pokemonSlug: ID!){
          pokemon(id: $pokemonSlug){
            slug
            name
            height
            weight
            speed
            specialDefence
            specialAttack
            defence
            attack
            hp
            types {
              name
              slug
            }
          }
        }
      GRAPHQL

      @pikachu = create(:pokemon, slug: 'pikachu', name: 'Pikachu')
    end

    it 'resolves basic details of the pokemon' do
      variables = { pokemon_slug: 'pikachu' }
      response = run_query(@query, variables: variables)

      expect(response.data.pokemon.slug).to eq(@pikachu.slug)
      expect(response.data.pokemon.name).to eq(@pikachu.name)
    end

    it 'resolves the genres of the pokemon as types' do
      genre = create(:genre, slug: 'electric', name: 'Electric')
      @pikachu.genres << genre
      variables = { pokemon_slug: 'pikachu' }
      response = run_query(@query, variables: variables)
      genre_response = response.data.pokemon.types.first

      expect(genre_response.slug).to eq(genre.slug)
      expect(genre_response.name).to eq(genre.name)
    end
  end
end
