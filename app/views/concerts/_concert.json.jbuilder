json.extract! concert, :id, :event, :tickets, :duration, :group_id, :created_at, :updated_at
json.url concert_url(concert, format: :json)
