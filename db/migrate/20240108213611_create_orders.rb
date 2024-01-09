class CreateOrders < ActiveRecord::Migration[7.1]
  def change
    create_table :orders do |t|
      t.integer :user_id
      t.integer :delivery_id
      t.integer :total_price

      t.timestamps
    end
  end
end
