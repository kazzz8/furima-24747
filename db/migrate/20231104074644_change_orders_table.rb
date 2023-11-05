class ChangeOrdersTable < ActiveRecord::Migration[7.0]
  def change
    add_foreign_key :orders, :users, column: :user_id
    add_foreign_key :orders, :items, column: :item_id
  end
end