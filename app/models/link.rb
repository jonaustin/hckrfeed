class Link < ActiveRecord::Base
  attr_accessible :link, :username

  scope :sorted, order('created_at DESC')
end
