require 'rails_helper'

RSpec.describe Pokemon, type: :model do
  describe 'validations' do
    it { is_expected.to validate_presence_of :slug }
    it { is_expected.to validate_presence_of :name }
  end
end
