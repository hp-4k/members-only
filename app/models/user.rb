class User < ActiveRecord::Base
  has_many :posts
  
  validates :name, presence: true, uniqueness: true, length: { minimum: 3 }
  validates :password, length: { minimum: 8 }, allow_nil: true
  has_secure_password
end
