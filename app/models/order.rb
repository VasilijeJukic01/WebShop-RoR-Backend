class Order < ApplicationRecord

  has_many :order_articles
  has_many :articles, through: :order_articles

  validates :total_price, presence: true, numericality: { greater_than_or_equal_to: 0 }
  validates :user_id, presence: true, numericality: { greater_than: 0, only_integer: true }

end
