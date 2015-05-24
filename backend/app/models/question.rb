class Question < ActiveRecord::Base
  has_many :answers
  belongs_to :user

  # Accessing the instance of the question and adding the vote total amount by one - then saving to the database
  def up_vote
    self.vote_total += 1
    self.save
  end

  # Accessing the instance of the question and subtracting the vote total amount by one - then saving to the database
  def down_vote
    self.vote_total -= 1
    self.save
  end

end