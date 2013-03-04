class Comment < ActiveRecord::Base
  attr_accessible :comment, :link_id, :username

  belongs_to :link

  validates_presence_of :link_id
  validates_presence_of :comment
end
