class Article < ApplicationRecord

  has_many :order_articles
  has_many :orders, through: :order_articles

  validates :name, presence: true, length: { minimum: 2 }
  validates :price, presence: true, numericality: { greater_than_or_equal_to: 0 }
  validates :category_id, presence: true, numericality: { greater_than: 0, only_integer: true }

end
