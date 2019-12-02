json.extract! trip, :id, :status, :price, :check_code, :created_at, :updated_at
json.url trip_url(trip, format: :json)
