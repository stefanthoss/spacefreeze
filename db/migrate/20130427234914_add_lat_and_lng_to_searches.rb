class AddLatAndLngToSearches < ActiveRecord::Migration
  def change
    add_column :searches, :lat, :float
    add_column :searches, :lng, :float
  end
end
