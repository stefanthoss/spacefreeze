class User < ActiveRecord::Base
  attr_accessible :address, :name, :paypal_email, :phone

  has_many :searches
  has_many :spaces
end
