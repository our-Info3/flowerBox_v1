class CreateFlowers < ActiveRecord::Migration
  def change
    create_table :flowers do |t|
      t.string :name
      t.decimal :flower_price
      t.integer :box_id

      t.timestamps
    end
  end
end
