json.extract! event, :id, :welcome_msg, :description, :start_date, :end_date, :note, :name, :created_at, :updated_at
json.url event_url(event, format: :json)