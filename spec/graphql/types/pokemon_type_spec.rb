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
            }
          }
        }
      GRAPHQL
    end

    it 'resolves basic details of the pokemon' do
      pikachu = create(:pokemon, slug: 'pikachu', name: 'Pikachu')
      variables = { pokemon_slug: 'pikachu' }
      response = run_query(@query, variables: variables)

      expect(response.data.pokemon.slug).to eq(pikachu.slug)
      expect(response.data.pokemon.name).to eq(pikachu.name)
    end
  end
end
