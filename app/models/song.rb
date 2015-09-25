class Song < ActiveRecord::Base
  # Remember to create a migration!
  has_many :likes
  has_many :users, through :likes
end
