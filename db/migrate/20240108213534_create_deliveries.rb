class CreateDeliveries < ActiveRecord::Migration[7.1]
  def change
    create_table :deliveries do |t|
      t.date :delivery_date

      t.timestamps
    end
  end
end
