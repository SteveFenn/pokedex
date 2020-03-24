class Sprite < ApplicationRecord
  enum perspective: {
    front: 0,
    back: 1
  }

  belongs_to :pokemon

  validates :perspective, presence: true, inclusion: { in: Sprite.perspectives.keys }
  validates :url, presence: true
end
