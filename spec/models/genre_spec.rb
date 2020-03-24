require 'rails_helper'

RSpec.describe Genre, type: :model do
  describe 'validations' do
    it { is_expected.to validate_presence_of :slug }
    it { is_expected.to validate_presence_of :name }
  end

  describe 'associations' do
    it { is_expected.to have_many(:pokemons).through(:pokemon_types) }
    it { is_expected.to have_many(:pokemon_types).dependent(:destroy) }
  end
end
