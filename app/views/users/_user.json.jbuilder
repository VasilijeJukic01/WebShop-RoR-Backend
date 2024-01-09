json.extract! user, :id, :name, :email, :password_digest, :remember_digest, :admin, :role, :created_at, :updated_at
json.url user_url(user, format: :json)
