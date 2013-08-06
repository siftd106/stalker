class Tag < ActiveRecord::Base
  has_many :tagships
  has_many :users, through: :tagships
end
