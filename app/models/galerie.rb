class Galerie < ApplicationRecord
  validates :name, presence: true
  validates :description, presence: true
  has_one_attached :photo
  has_many :art_pieces, dependent: :destroy
end
