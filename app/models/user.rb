class User < ActiveRecord::Base
  validates_presence_of :username, :password, :email
  has_secure_password
  has_many :tweets

  def slug
      self.name.gsub(" ", "-").downcase
    end
end
