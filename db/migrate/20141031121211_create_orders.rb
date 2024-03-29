class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.string :name
      t.boolean :complete, default: false, null: false
      t.timestamps
    end
  end
end
