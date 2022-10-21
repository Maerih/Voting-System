class DropVoters < ActiveRecord::Migration[7.0]
  def change
    drop_table :voters
  end
end
