class CreateInventories < ActiveRecord::Migration[5.0]
  def change
    create_table :inventories do |t|
      t.string :serial_num, null: false
      t.integer :size
      t.string :description
      t.integer :category_id, index: true

      t.timestamps
    end
    add_index :inventories, :serial_num, unique: true
  end
end
