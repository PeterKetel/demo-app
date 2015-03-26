class User < ActiveRecord::Base
  attr_accessible :content, :user_id
  attr_accessible :name, :email
  has_many :microposts, :dependent => :delete_all
end
