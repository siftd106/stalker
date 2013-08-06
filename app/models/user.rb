class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me, :first_name, :last_name, :phone
  # attr_accessible :title, :body

  has_many :enrollments
  has_many :courses, through: :enrollments
  has_many :tagships
  has_many :tags, through: :tagships
  has_many :roles
  has_many :roles, through: :user_roles

  scope :students

  def full_name
    "#{first_name} #{last_name}"
  end

end
