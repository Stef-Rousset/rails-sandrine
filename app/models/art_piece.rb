class ArtPiece < ApplicationRecord
  belongs_to :gallery
  has_one_attached :photo

  validates :title, presence: true
  validates :year, presence: true
  validates :description, presence: true
  # validates :photo, presence: true
end
