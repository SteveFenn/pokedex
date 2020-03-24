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
end
