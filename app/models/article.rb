class Article < ApplicationRecord

  validates :name, presence: true, length: { minimum: 2 }
  validates :price, presence: true, numericality: { greater_than_or_equal_to: 0 }
  validates :category_id, presence: true, numericality: { greater_than: 0, only_integer: true }
  validates :order_id, presence: false, numericality: { greater_than: 0, only_integer: true }

end
