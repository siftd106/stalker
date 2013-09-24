class Course < ActiveRecord::Base
	validates :description, presence: true
	validates :start_date, presence: true

  has_many :enrollments
  has_many :users, through: :enrollments


end
