class AddVoteToAnswers < ActiveRecord::Migration
  def change
    add_column :answers, :vote, :integer, default: 0
    add_index :answers, :vote
  end
end
