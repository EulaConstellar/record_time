json.array!(@recorded_times) do |recorded_time|
  json.extract! recorded_time, :id, :number
  json.url recorded_time_url(recorded_time, format: :json)
end
