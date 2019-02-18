class CreateBooks < ActiveRecord::Migration[5.2]
  def change
    create_table :books do |t|
      t.string :eng_title
      t.string :arabic_title
      t.string :language
      t.text :about
      t.boolean :harakat
      t.integer :num_pages
      t.string :translator
      t.integer :genre_id
      t.integer :author_id

      t.timestamps
    end
  end
end
