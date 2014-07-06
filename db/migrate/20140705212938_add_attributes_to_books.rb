class AddAttributesToBooks < ActiveRecord::Migration
  def change
    add_column :books, :title, :string
    add_column :books, :author, :string
    add_column :books, :genre, :string
    add_column :books, :description, :text
  end
end
