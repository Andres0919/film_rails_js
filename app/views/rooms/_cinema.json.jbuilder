json.extract! room, :id, :name, :num_chairs, :status, :cinema_id, :created_at, :updated_at
json.url room_url(room, format: :json)
