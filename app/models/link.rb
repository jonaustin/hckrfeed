class Link < ActiveRecord::Base
  attr_accessible :url, :username, :name, :score

  has_many :comments

  validates_presence_of :url
  validates_presence_of :username
  validates_presence_of :name

  scope :date_desc, order('created_at DESC')
  scope :score_desc, order('score DESC')

  def increment_score!
    self.score += 1
    save!
  end

  def decrement_score!
    self.score -= 1
    save!
  end
end
