json.extract! contestant, :id, :name, :email, :number_of_votes, :user_id, :created_at, :updated_at
json.url contestant_url(contestant, format: :json)
