class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.integer :user_id
      t.decimal :total_price
      t.integer :total_quantity
      t.string :status, default: 0
      t.string :payment_mode

      t.timestamps
    end
  end
end
