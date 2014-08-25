class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.references :unit_category
      t.decimal :price_per_unit, precision: 6, scale: 2
      t.string :name
      t.string :store
      t.date :price_last_updated
      t.text :notes

      t.timestamps
    end
  end
end
