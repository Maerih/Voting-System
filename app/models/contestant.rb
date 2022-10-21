class Contestant < ApplicationRecord
  has_many :votes
 
  belongs_to :user

  def add_votes
    self.number_of_votes += 1
    self.save
  end
end
