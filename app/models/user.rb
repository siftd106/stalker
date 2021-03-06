class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :enrollments
  has_many :courses, through: :enrollments
  has_many :tagships
  has_many :tags, through: :tagships
  has_many :roleships
  has_many :roles, through: :roleships

  scope :students, -> {}

  def full_name
    "#{first_name} #{last_name}"
  end

  def sortable_full_name
    "#{last_name}, #{first_name}"
  end
end
