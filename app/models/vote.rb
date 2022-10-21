class Vote < ApplicationRecord
  belongs_to :contestant
  belongs_to :user
  after_create :add_vote_to_contestant
  def add_vote_to_contestant
    self.contestant.number_of_votes +=1
    self.contestant.save
  end

end
