class Tag < ActiveRecord::Base
  attr_accessible :name

  has_many :tagships
  has_many :users, through: :tagships
end