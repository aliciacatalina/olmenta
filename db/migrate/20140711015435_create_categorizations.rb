class CreateCategorizations < ActiveRecord::Migration
  def change
    create_table :categorizations do |t|
      t.integer :genre_id
      t.integer :book_id

      t.timestamps
    end
    add_index :categorizations, :genre_id
    add_index :categorizations, :book_id
  end
end
