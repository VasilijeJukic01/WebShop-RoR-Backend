class Order < ApplicationRecord

  has_many :articles

  validates :total_price, presence: true, numericality: { greater_than_or_equal_to: 0 }
  validates :user_id, presence: true, numericality: { greater_than: 0, only_integer: true }
  validates :delivery_id, numericality: { greater_than: 0, only_integer: true }

end
