module Types
  class QueryType < Types::BaseObject
    field :pokemon, PokemonType, null: true, description: 'Stats on individual pokemon' do
      argument :id, ID, required: true, as: :id_or_slug
    end
    def pokemon(id_or_slug:)
      Pokemon.friendly_find_by(id_or_slug)
    end
  end
end
