class Blog < ActiveRecord::Base
  attr_accessible :description, :name

  validates :description, :name, :presence => true
  
  has_many :posts, :dependent => :destroy
  has_many :blogs, through: :owner 
end