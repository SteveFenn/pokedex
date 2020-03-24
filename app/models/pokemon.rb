class Pokemon < ApplicationRecord
  extend FriendlyId
  friendly_id :name

  validates :name, presence: true
  validates :slug, presence: true
end
