class AddTitleToPhotos < ActiveRecord::Migration[7.2]
  def change
    add_column :photos, :title, :string
  end
end
