class CreateArticles < ActiveRecord::Migration[7.1]
  def change
    create_table :articles do |t|
      t.integer :category_id
      t.string :name
      t.integer :price

      t.timestamps
    end
  end
end
