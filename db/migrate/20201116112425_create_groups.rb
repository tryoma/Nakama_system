class CreateGroups < ActiveRecord::Migration[6.0]
  def change
    create_table :groups do |t|
      t.string :group_name
      t.integer :owner_id
      t.string :goal
      t.string :todo
      t.integer :frequency
      t.date :start_goal_day
      t.date :end_goal_day
      t.string :genre
      t.integer :limit_members

      t.timestamps
    end
  end
end
