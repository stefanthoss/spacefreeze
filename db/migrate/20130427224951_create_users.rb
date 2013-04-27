class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :paypal_email
      t.string :name
      t.string :address
      t.string :phone

      t.timestamps
    end
  end
end
