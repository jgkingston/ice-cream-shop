class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.integer :order_id
      t.integer :product_id
      t.float :discount, default: 0.0
      t.timestamps
    end
  end
end
