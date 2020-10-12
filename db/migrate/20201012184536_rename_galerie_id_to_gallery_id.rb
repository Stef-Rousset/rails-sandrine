class RenameGalerieIdToGalleryId < ActiveRecord::Migration[6.0]
  def change
    rename_column :art_pieces, :galerie_id, :gallery_id
  end
end
