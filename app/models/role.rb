class Role < ActiveRecord::Base
  ROLES = {
    admin: find_or_create_by(description: 'Admin').id,
    coordinator: find_or_create_by(description: 'Coordinator').id,
    student: find_or_create_by(description: 'Student').id
  }
  has_many :roleships
  has_many :users, through: :roleships

  
end
