json.extract! client, :id, :user_id, :email, :phone, :created_at, :updated_at
json.url client_url(client, format: :json)
