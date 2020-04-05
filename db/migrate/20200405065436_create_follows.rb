class CreateFollows < ActiveRecord::Migration[5.2]
  def change
    create_table :follows do |t|
      t.boolean :fever
      t.boolean :cough
      t.boolean :breath
      t.string :people

      t.timestamps
    end
  end
end
