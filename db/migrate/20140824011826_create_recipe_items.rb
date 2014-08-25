class CreateRecipeItems < ActiveRecord::Migration
  def change
    create_table :recipe_items do |t|
      t.references :recipe
      t.references :item
      t.references :unit
      t.decimal :amount, precision: 15, scale: 4
      t.text :notes

      t.timestamps
    end
  end
end
