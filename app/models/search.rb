class Search < ActiveRecord::Base
  attr_accessible :address, :begin, :charge, :end, :max_distance, :max_price, :space_type, :user_id, :lat, :lon

  belongs_to :user
  has_one :space
end
