require 'rails_helper'

RSpec.describe Pokemon, type: :model do
  describe 'validations' do
    it { is_expected.to validate_presence_of :slug }
    it { is_expected.to validate_presence_of :name }
    it { is_expected.to validate_presence_of :height }
    it { is_expected.to validate_presence_of :weight }
    it { is_expected.to validate_presence_of :special_defence }
    it { is_expected.to validate_presence_of :special_attack }
    it { is_expected.to validate_presence_of :speed }
    it { is_expected.to validate_presence_of :defence }
    it { is_expected.to validate_presence_of :attack }
    it { is_expected.to validate_presence_of :hp }
  end

  describe 'associations' do
    it { is_expected.to have_many(:genres).through(:pokemon_types) }
    it { is_expected.to have_many(:pokemon_types).dependent(:destroy) }
    it { is_expected.to have_many(:sprites) }
  end
end
