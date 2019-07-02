json.extract! appointment, :id, :user_id, :client_id, :person_id, :from, :to, :created_at, :updated_at
json.url appointment_url(appointment, format: :json)
