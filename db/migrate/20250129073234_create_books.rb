class CreateBooks < ActiveRecord::Migration[7.2]
  def change
    create_table :books do |t|
      t.string :isbn
      t.string :title
      t.integer :price
      t.string :publisher
      t.date :publishd
      t.boolean :dl

      t.timestamps
    end
  end
end
