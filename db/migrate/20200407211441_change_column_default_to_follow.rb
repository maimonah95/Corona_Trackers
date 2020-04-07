class ChangeColumnDefaultToFollow < ActiveRecord::Migration[5.2]
  def change
    change_column_default :follows, :created_on, nil
  end
end
