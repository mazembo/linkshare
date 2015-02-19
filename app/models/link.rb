class Link < ActiveRecord::Base
  belongs_to :user
  has_many :comments
  
  acts_as_votable
  validates :title, :url, presence: true 
end
