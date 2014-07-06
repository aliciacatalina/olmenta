class CreateCollections < ActiveRecord::Migration
  def change
    create_table :collections do |t|

      t.integer :user_id
      t.integer :book_id

      t.timestamps
    end
    add_index :collections, :user_id
    add_index :collections, :book_id
  end
end
