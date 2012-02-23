class User < ActiveRecord::Base
  validates :user_name,
    :presence => true,
    :uniqueness => true

  validates :user_nickname,
    :presence => true,
    :uniqueness => true

  has_secure_password
  validates_presence_of :password, :on => :create
end
