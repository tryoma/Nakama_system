json.set! :users do
  json.array! @users do |user|
    json.extract! user, :username, :created_at, :updated_at
  end
end