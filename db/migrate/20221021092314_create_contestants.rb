class CreateContestants < ActiveRecord::Migration[7.0]
  def change
    create_table :contestants do |t|
      t.string :name
      t.string :email
      t.integer :number_of_votes
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
