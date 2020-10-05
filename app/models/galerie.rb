class Galerie < ApplicationRecord
  validates :name, presence: true
  validates :description, presence: true
  has_one_attached :photo

  scope :sculptures, -> {where("name=?", "entre Terre et Pierres")}
end
