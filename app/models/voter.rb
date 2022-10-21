class Voter < ApplicationRecord
  belongs_to :contestant
  belongs_to :user
end
