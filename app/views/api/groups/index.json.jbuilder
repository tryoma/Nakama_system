json.set! :groups do
  json.array! @groups do |group|
    json.extract! group, :id, :group_name, :owner_id, :goal, :todo, :frequency, :start_goal_day, :end_goal_day, :genre, :limit_members, :created_at, :updated_at
  end
end