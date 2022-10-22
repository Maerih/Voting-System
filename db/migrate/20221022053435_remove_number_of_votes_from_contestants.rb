class RemoveNumberOfVotesFromContestants < ActiveRecord::Migration[7.0]
  def change
    remove_column :contestants, :number_of_votes, :string
  end
end
