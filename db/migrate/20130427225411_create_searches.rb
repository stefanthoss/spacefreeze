class CreateSearches < ActiveRecord::Migration
  def change
    create_table :searches do |t|
      t.integer :user_id
      t.string :address
      t.datetime :begin
      t.datetime :end
      t.integer :max_distance
      t.float :max_price
      t.string :space_type
      t.boolean :charge

      t.timestamps
    end
  end
end
