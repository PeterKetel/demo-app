class User < ActiveRecord::Base
  attr_accessible :content, :user_id
  has_many :microposts
end
