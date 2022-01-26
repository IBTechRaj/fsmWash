class User < ApplicationRecord
  has_secure_password
  before_save { self.email = email.downcase }
  has_many :clients

  
  validates :email, presence: true, uniqueness: true
end
