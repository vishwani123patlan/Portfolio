json.extract! post, :id, :title, :description, :likes, :dislikes, :created_at, :updated_at
json.url post_url(post, format: :json)
