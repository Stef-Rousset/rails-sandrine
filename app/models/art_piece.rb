class ArtPiece < ApplicationRecord
  belongs_to :galerie
  validates :title, presence: true
  validates :year, presence: true
  validates :description, presence: true
  has_one_attached :photo
end
