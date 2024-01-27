json.extract! order_article, :id, :order_id, :article_id, :amount, :price, :created_at, :updated_at
json.url order_article_url(order_article, format: :json)
