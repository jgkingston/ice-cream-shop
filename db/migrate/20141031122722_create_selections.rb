class CreateSelections < ActiveRecord::Migration
  def change
    create_table :selections do |t|
      t.integer :ingredient_id
      t.integer :item_id
      t.timestamps
    end
  end
end
