class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.integer :numberOfBoxes
      t.decimal :totalCosts
      t.integer :user_id

      t.timestamps
    end
  end
end
