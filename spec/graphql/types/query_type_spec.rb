require 'rails_helper'

RSpec.describe Types::QueryType, type: :graphql do
  describe '#pokemon' do
    before do
      @bulbasaur = create(:pokemon, slug: 'bulbasaur', name: 'Bulbasaur')
      @query = <<-GRAPHQL
        query getPokemon($pokemonSlug: ID!){
          pokemon(id: $pokemonSlug){
            name
          }
        }
      GRAPHQL
    end

    it 'returns the details of the corresponding pokemon if passed the ID' do
      variables = { pokemon_slug: @bulbasaur.id }
      response = run_query(@query, variables: variables)
      expect(response.data.pokemon.name).to eq(@bulbasaur.name)
    end

    it 'returns the details of the corresponding pokemon if passed the slug' do
      variables = { pokemon_slug: @bulbasaur.slug }
      response = run_query(@query, variables: variables)
      expect(response.data.pokemon.name).to eq(@bulbasaur.name)
    end

    it 'returns nil if the pokemon does not exist' do
      variables = { pokemon_slug: 'frog' }
      response = run_query(@query, variables: variables)
      expect(response.data.pokemon).to be_nil
    end
  end
end
