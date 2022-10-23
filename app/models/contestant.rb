class Contestant < ApplicationRecord
  has_many :votes , dependent: :destroy
  validates :name, presence: true
  validates :name, length: { minimum: 2 }
  validates :name, length: { maximum: 20 }
  validates :avatar, presence: true
  validates :email , presence: true


 
  belongs_to :user
  has_one_attached :avatar

  def add_votes
    self.number_of_votes += 1
    self.save
  end
end
