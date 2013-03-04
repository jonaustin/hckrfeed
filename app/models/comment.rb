class Comment < ActiveRecord::Base
  attr_accessible :comment, :link_id, :username

  belongs_to :link
end
