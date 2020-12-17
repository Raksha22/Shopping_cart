class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.integer :user_id
      t.decimal :subtotal
      t.decimal :total
      t.decimal :subquantity
      t.string :status
      t.string :payment_mode

      t.timestamps
    end
  end
end
