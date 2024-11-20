class CreatePhotos < ActiveRecord::Migration[7.2]
  def change
    create_table :photos do |t|
      t.references :user, null: false, foreign_key: true
      t.string :caption
      t.string :image
      t.timestamps
    end
  end
end
