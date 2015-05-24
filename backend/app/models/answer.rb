class Answer < ActiveRecord::Base
  belongs_to :question
  belongs_to :user

  def up_vote
    self.vote_total += 1
    self.save
  end

  def down_vote
    self.vote_total -= 1
    self.save
  end

end