class Post < ActiveRecord::Base
  belongs_to :page
  validates_presence_of :page_id, :message, :created_time
end
