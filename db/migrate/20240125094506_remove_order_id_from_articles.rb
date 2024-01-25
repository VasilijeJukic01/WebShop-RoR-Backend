class RemoveOrderIdFromArticles < ActiveRecord::Migration[7.1]
  def change
    remove_column :articles, :order_id, :integer
  end
end
