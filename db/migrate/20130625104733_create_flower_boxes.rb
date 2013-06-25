class CreateFlowerBoxes < ActiveRecord::Migration
  def change
    create_table :flower_boxes do |t|
      t.decimal :price
      t.integer :size
      t.string :color
      t.integer :order_id

      t.timestamps
    end
  end
end
