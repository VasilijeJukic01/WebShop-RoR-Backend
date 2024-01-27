class OrderArticle < ApplicationRecord

  belongs_to :order
  belongs_to :article

  validates :amount, presence: true, numericality: { greater_than_or_equal_to: 0 }
  validates :price, presence: true, numericality: { greater_than_or_equal_to: 0 }

end