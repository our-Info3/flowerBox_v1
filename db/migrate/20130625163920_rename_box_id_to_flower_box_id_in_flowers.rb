class RenameBoxIdToFlowerBoxIdInFlowers < ActiveRecord::Migration
  def change
    change_table :flowers do |t|
        t.rename :box_id, :flower_box_id
    end
  end
end
