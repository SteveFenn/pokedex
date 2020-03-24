require 'factory_bot'

FactoryBot.factories.clear
FactoryBot.define do
  sequence(:slug) { |slug| "name#{slug}" }
  sequence(:name) { |name| "name#{name}" }
end
