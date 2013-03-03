class Link < ActiveRecord::Base
  attr_accessible :link, :username, :name

  scope :date_desc, order('created_at DESC')
end
