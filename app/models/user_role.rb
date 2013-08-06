class UserRole < ActiveRecord::Base
  has_many :users
  has_many :roles
end
