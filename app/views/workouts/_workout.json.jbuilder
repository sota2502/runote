json.extract! workout, :id, :note_id, :meter, :kcal, :steps, :sec, :memo, :created_at, :updated_at
json.url workout_url(workout, format: :json)
