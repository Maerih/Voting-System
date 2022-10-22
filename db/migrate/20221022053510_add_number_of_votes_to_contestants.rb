class AddNumberOfVotesToContestants < ActiveRecord::Migration[7.0]
  def change
    add_column :contestants, :number_of_votes, :integer , default: 0
  end
end
