class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me, :first_name, :last_name, :eamil, :phone
  # attr_accessible :title, :body

  has_many :enrollments
  has_many :courses, through: :enrollments
  has_many :tagships
  has_many :tags, through: :tagships

  belongs_to :user_type

  scope :students
end
