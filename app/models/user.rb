include BCrypt

class User < ActiveRecord::Base
  # Remember to create a migration!
  has_many :likes
  has_many :songs, through :likes
end
