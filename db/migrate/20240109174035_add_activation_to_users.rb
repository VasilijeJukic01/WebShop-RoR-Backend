class AddActivationToUsers < ActiveRecord::Migration[7.1]
  def change
    add_column :users, :activation_digest, :string
    add_column :users, :activated, :boolean, default: false
  end
end