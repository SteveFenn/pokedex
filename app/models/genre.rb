class Genre < ApplicationRecord
  has_many :pokemon_types, dependent: :destroy
  has_many :pokemons, through: :pokemon_types

  validates :name, presence: true
  validates :slug, presence: true
end
