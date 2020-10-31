class Gallery < ApplicationRecord
  has_many :art_pieces, dependent: :destroy
  has_one_attached :photo

  scope :sculptures, -> { where(name: "Entre Terre et Pierres")}

  validates :name, presence: true
  validates :description, presence: true
end
