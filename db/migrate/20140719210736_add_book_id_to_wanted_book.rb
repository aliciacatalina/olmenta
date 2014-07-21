class AddBookIdToWantedBook < ActiveRecord::Migration
  def change
    add_column :wanted_books, :book_id, :integer
    add_index :wanted_books, :book_id
  end
end
