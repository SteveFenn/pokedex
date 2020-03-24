class Pokemon < ApplicationRecord
  extend FriendlyId
  friendly_id :name

  has_many :pokemon_types, dependent: :destroy
  has_many :genres, through: :pokemon_types
  has_many :sprites, dependent: :destroy

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

  alias types genres
end
