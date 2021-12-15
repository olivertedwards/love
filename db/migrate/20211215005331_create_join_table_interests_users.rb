class CreateJoinTableInterestsUsers < ActiveRecord::Migration[6.1]
  def change
    create_join_table :interests, :users do |t|
      t.index [:interest_id, :user_id]
      t.index [:user_id, :interest_id]
    end
  end
end
