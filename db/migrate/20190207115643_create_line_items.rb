class CreateLineItems < ActiveRecord::Migration[5.2]
  def change
    create_table :line_items do |t|
      t.integer :user_id
      t.integer :quantity
      t.integer :product_id
      t.integer :order_id
      t.decimal :total
      t.decimal :unit_price
      t.integer :canceled_at

      t.timestamps
    end
  end
end
