class CreateAddresses < ActiveRecord::Migration[5.2]
  def change
    create_table :addresses do |t|
      t.text :address1
      t.text :address2
      t.string :city
      t.string :state
      t.string :country
      t.bigint :postal_code
      t.references :user, foreign_key: true
      t.timestamps
    end
  end
end
