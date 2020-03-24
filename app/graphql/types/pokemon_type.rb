module Types
  class PokemonType < BaseObject
    field :slug, ID, null: false
    field :name, String, null: false
  end
end
