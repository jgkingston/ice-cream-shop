class CreateIngredients < ActiveRecord::Migration
  def change
    create_table :ingredients do |t|
      t.string :category
      t.string :description
      t.timestamps
    end
  end
end
