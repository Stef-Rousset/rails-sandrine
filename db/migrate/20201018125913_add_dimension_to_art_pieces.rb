class AddDimensionToArtPieces < ActiveRecord::Migration[6.0]
  def change
    add_column :art_pieces, :dimension, :string
  end
end
