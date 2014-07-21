class CreateIndentities < ActiveRecord::Migration
  def change
    create_table :indentities do |t|
      t.references :user, index: true
      t.string :provider
      t.string :uid

      t.timestamps
    end
  end
end
