class User < ActiveRecord::Base
  attr_accessible :address, :name, :paypal_email, :phone, :email, :password, :password_confirmation
  has_secure_password
  validates_presence_of :password, :on => :create
  validates :password_confirmation, presence: true

  has_many :searches
  has_many :spaces
end
