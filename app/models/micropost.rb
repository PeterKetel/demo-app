class Micropost < ActiveRecord::Base
  attr_accessible :content, :user_id

  belongs_to :user
  validates :user_id, presence: true

  #validates :content, :length => {:maxium => 140}
end
