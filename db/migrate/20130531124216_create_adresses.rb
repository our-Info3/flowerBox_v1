class CreateAdresses < ActiveRecord::Migration
  def change
    create_table :adresses do |t|
      t.string :billing_street
      t.integer :billing_house_number
      t.integer :billing_zipcode
      t.string :billing_city
      t.string :shipping_street
      t.integer :shipping_house_number
      t.integer :shipping_zipcode
      t.string :shipping_city
      t.integer :user_id

      t.timestamps
    end
  end
end
