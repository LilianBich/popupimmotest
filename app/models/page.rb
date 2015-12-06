class Page < ActiveRecord::Base
  has_many :posts
  validates_presence_of :fb_id, :name
end
