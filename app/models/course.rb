class Course < ActiveRecord::Base
  attr_accessible :description

  has_many :enrollments
  has_many :users, through: :enrollments
end
