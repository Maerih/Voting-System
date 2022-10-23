class Vote < ApplicationRecord
  belongs_to :contestant
  belongs_to :user
  after_create :add_vote_to_contestant
  after_create :add_vote_to_user
  after_destroy :remove_vote_from_contestant , :remove_vote_from_user
  def add_vote_to_contestant
    self.contestant.number_of_votes +=1
    self.contestant.save

  end
  def add_vote_to_user
    self.user.vote_count +=1
    self.user.save
  end
  def remove_vote_from_contestant
    self.contestant.number_of_votes -=1
    self.contestant.save
  end
  def remove_vote_from_user
    self.user.vote_count -=1
    self.user.save
  end



end
