require 'rails_helper'

RSpec.describe Types::QueryType do
  describe '#pokemon' do
    it 'returns the details of the corresponding pokemon if passed the ID or slug' do
      query = <<-GRAPHQL
        query getPokemon($pokemonSlug: String){
          pokemon(id: $pokemonSlug){
            name
          }
        }
      GRAPHQL
      variables = { pokemon_slug: 'bulbasaur' }
      response = run_query(query, variables: variables)
      expect(response.data.pokemon.name).to eq('bulbasaur')
    end
  end
end
