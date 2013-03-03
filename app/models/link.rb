class Link < ActiveRecord::Base
  attr_accessible :url, :username, :name

  validates_presence_of :url
  validates_presence_of :username
  validates_presence_of :name

  scope :date_desc, order('created_at DESC')
end
