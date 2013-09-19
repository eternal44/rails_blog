class Blog < ActiveRecord::Base
  attr_accessible :description, :name, :user_id

  validates :description, :name, :presence => true
  
  has_many :posts, :dependent => :destroy
  has_many :blogs, through: :owner 
end