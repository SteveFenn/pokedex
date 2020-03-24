require 'rails_helper'

RSpec.describe Types::PokemonType, type: :graphql do
  describe 'pokemon type data' do
    before do
      @pikachu = create(:pokemon, slug: 'pikachu', name: 'Pikachu')
    end

    it 'resolves basic details of the pokemon' do
      response = build_response

      expect(response.data.pokemon.slug).to eq(@pikachu.slug)
      expect(response.data.pokemon.name).to eq(@pikachu.name)
    end

    it 'resolves the genres of the pokemon as types' do
      genre = create(:genre, slug: 'electric', name: 'Electric')
      @pikachu.genres << genre
      response = build_response
      genre_response = response.data.pokemon.types.first

      expect(genre_response.slug).to eq(genre.slug)
      expect(genre_response.name).to eq(genre.name)
    end

    it 'resolves the sprites of the pokemon' do
      sprite = create(:sprite, pokemon: @pikachu, perspective: 'front', url: 'http://www.pokeimage.com/pikachu/front.png')
      response = build_response
      sprite_response = response.data.pokemon.sprites.first

      expect(sprite_response.perspective).to eq(sprite.perspective)
      expect(sprite_response.url).to eq(sprite.url)
    end
  end

  def build_response(variables: { pokemon_slug: 'pikachu' })
    query = <<-GRAPHQL
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
          sprites {
            perspective
            url
          }
        }
      }
    GRAPHQL
    run_query(query, variables: variables)
  end
end
