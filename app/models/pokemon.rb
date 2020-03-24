class Pokemon < ApplicationRecord
  extend FriendlyId
  friendly_id :name

  validates :name, presence: true
  validates :slug, presence: true
  validates :height, presence: true
  validates :weight, presence: true
  validates :speed, presence: true
  validates :special_defence, presence: true
  validates :special_attack, presence: true
  validates :attack, presence: true
  validates :defence, presence: true
  validates :hp, presence: true
end
