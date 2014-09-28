json.array!(@users) do |user|
  json.extract! user, :id, :name, :mobile, :email, :encrpted_password, :role
  json.url user_url(user, format: :json)
end
