class CreateWantedBooks < ActiveRecord::Migration
  def change
    create_table :wanted_books do |t|

      t.timestamps
    end
  end
end
