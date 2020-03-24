require 'rails_helper'

RSpec.describe Sprite, type: :model do
  describe 'enums' do
    it { is_expected.to define_enum_for(:perspective).with_values(described_class.perspectives.keys) }
  end

  describe 'validations' do
    it { is_expected.to validate_presence_of :perspective }
    it { is_expected.to validate_presence_of :url }
  end

  describe 'associations' do
    it { is_expected.to belong_to(:pokemon) }
  end
end
