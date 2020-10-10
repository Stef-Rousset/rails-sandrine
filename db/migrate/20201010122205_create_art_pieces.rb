class CreateArtPieces < ActiveRecord::Migration[6.0]
  def change
    create_table :art_pieces do |t|
      t.string :title
      t.text :description
      t.integer :year
      t.references :galerie, null: false, foreign_key: true

      t.timestamps
    end
  end
end
