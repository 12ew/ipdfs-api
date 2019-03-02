class AddImageFileToBook < ActiveRecord::Migration[5.2]
  def change
    add_column :books, :image, :string
    add_column :books, :file, :string
  end
end
