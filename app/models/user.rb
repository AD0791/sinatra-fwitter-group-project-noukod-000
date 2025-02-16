class User < ActiveRecord::Base
  validates_presence_of :username, :password, :email
  has_secure_password
  has_many :tweets

  def slug
      self.username.gsub(" ", "-").downcase
  end

  def self.find_by_slug(slug)
      self.all.find{ |instance| instance.slug == slug }
    end
end
