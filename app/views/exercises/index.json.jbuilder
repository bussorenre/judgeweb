json.array!(@exercises) do |exercise|
  json.extract! exercise, :id, :title, :sentence
  json.url exercise_url(exercise, format: :json)
end
