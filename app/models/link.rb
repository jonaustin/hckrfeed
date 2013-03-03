class Link < ActiveRecord::Base
  attr_accessible :link, :username

  scope :date_desc, order('created_at DESC')
end
