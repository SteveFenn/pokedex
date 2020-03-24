module Types
  class PokemonType < BaseObject
    field :slug, ID, null: false
    field :name, String, null: false
    field :height, Integer, null: false
    field :weight, Integer, null: false
    field :speed, Integer, null: false
    field :special_defence, Integer, null: false
    field :special_attack, Integer, null: false
    field :defence, Integer, null: false
    field :attack, Integer, null: false
    field :hp, Integer, null: false
    field :types, [GenreType], null: true
    field :sprites, [SpriteType], null: true
  end
end
