class Space < ActiveRecord::Base
  attr_accessible :address, :begin, :charge, :end, :picture, :price, :space_type, :user_id, :search_id, :lat, :lon

  belongs_to :user
  belongs_to :search
end
