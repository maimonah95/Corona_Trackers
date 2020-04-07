class AddUniquenessConstraintToFollow < ActiveRecord::Migration[5.2]
  def change
    # add_index :follows, [:user_id, :created_on], unique: true
  end
end
