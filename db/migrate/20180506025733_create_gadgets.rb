class CreateGadgets < ActiveRecord::Migration[5.2]
  def change
    create_table :gadgets do |t|
      t.string :name
      t.string :brand
      t.string :year_released
      t.string :camera
      t.string :mpixels
      t.integer :internal_storage
      t.integer :sim_slots
      t.string :screen_size
      t.string :os
      t.integer :num_in_stock

      t.timestamps
    end
  end
end
