class ChangeGalerieToGallery < ActiveRecord::Migration[6.0]
  def change
    rename_table :galeries, :galleries
  end
end
