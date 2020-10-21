class ArtPiece < ApplicationRecord
  belongs_to :gallery
  has_many_attached :photos

  validates :title, presence: true
  validates :year, presence: true
  validates :description, presence: true
  validates :dimension, presence: true

end
