class Book < ActiveRecord::Base
  attr_accessor :upvote
  validates :name, presence: true
  before_save :upvote!, if: :upvote
  
  def upvote!
    self.upvote = nil
    self.rank  += 1
  end
  
  def is_it_really_cool_compared_to?(id)
    book = Book.find(id)
    self.rank > book.rank
  end
end
