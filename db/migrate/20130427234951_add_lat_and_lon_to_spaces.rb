class AddLatAndLonToSpaces < ActiveRecord::Migration
  def change
    add_column :spaces, :lat, :float
    add_column :spaces, :lon, :float
  end
end
