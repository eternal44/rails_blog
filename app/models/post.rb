class Post < ActiveRecord::Base
  belongs_to :blog
  belongs_to :user
  attr_accessible :content, :title

  validates :content, :title, :presence => true
  validates :title, length: {minimum: 7}
  
  has_many :messages, :dependent => :destroy
end
