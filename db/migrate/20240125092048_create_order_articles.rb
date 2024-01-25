class CreateOrderArticles < ActiveRecord::Migration[7.1]
  def change
    create_table :order_articles do |t|
      t.references :order, null: false, foreign_key: true
      t.references :article, null: false, foreign_key: true

      t.timestamps
    end
  end
end
