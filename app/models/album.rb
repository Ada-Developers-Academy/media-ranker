class Album < ActiveRecord::Base
  attr_accessor :upvote
  validates :name, presence: true
  before_save :upvote!, if: :upvote
  
  def upvote!
    self.upvote = nil
    self.rank  += 1
  end
  
end