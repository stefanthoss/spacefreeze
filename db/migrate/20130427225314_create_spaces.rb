class CreateSpaces < ActiveRecord::Migration
  def change
    create_table :spaces do |t|
      t.integer :user_id
      t.datetime :begin
      t.datetime :end
      t.float :price
      t.string :address
      t.string :space_type
      t.boolean :charge
      t.string :picture
      t.integer :search_id

      t.timestamps
    end
  end
end
