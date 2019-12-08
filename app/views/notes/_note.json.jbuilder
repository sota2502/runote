json.extract! note, :id, :user_id, :date, :weather, :location, :physical_conditions, :diary, :created_at, :updated_at
json.url note_url(note, format: :json)
