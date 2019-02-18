class CreateAuthors < ActiveRecord::Migration[5.2]
  def change
    create_table :authors do |t|
      t.string :name
      t.text :bio
      t.integer :yod

      t.timestamps
    end
  end
end
