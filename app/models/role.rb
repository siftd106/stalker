class Role < ActiveRecord::Base
  has_many :roleships
  has_many :users, through: :roleships

  # STUDENT => 'student'
  # ADMIN = 'admin'
end
