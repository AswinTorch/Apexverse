class Post < ApplicationRecord
  validates :name, :presence => true
  validates :banner_image_url, :presence => true
  validates :title, :presence => true,
    :length => { :minimum => 5 }
  validates :content, :presence => true,
    :length => { :minimum => 5 }
    
  has_many :comments, :dependent => :destroy
end
