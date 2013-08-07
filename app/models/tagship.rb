class Tagship < ActiveRecord::Base
  belongs_to :tag
  belongs_to :user
end
