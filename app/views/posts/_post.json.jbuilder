json.extract! post, :id, :headline, :details, :created_at, :updated_at
json.url post_url(post, format: :json)
