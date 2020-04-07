class AddExtraFieldToFollow < ActiveRecord::Migration[5.2]
  def change
    add_column :follows, :created_on,:date, :default => Date.current.strftime('%Y-%m-%d')
  end
end
