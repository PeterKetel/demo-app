class User < ActiveRecord::Base
  attr_accessible :content, :user_id
  has_many :microposts, :dependent => :delete_all
end
