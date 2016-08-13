class User < ActiveRecord::Base
  has_secure_password

  has_many :orders

  validates_confirmation_of :password
  #attr_accessor :password_confirmation
  #attr_accessor :password
  validates :first_name, :presence => true
  validates :last_name, :presence => true
  validates :email, :presence => true, :uniqueness => true
  validates :password, :confirmation => true #password_confirmation attr
  validates_length_of :password, :in => 6..20, :on => :create
end
