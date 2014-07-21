class AddWantedBookIdToCollections < ActiveRecord::Migration
  def change
    add_column :collections, :wanted_book_id, :integer
    add_index :collections, :wanted_book_id
  end
end
