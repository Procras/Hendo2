json.extract! guest, :id, :email, :password, :status, :created_at, :updated_at
json.url guest_url(guest, format: :json)