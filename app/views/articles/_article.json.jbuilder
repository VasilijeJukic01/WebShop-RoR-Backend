json.extract! article, :id, :category_id, :order_id, :name, :price, :created_at, :updated_at
json.url article_url(article, format: :json)
