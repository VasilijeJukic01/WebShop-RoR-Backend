class AddAmountAndTotalPriceToOrderArticles < ActiveRecord::Migration[7.1]
  def change
    add_column :order_articles, :amount, :integer
    add_column :order_articles, :total_price, :integer
  end
end
