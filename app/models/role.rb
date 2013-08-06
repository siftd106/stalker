class Role < ActiveRecord::Base
  attr_accessible :description

  has_many :user_roles
  has_many :users, through: :user_roles

  STUDENT = 'student'
  ADMIN = 'admin'
end
