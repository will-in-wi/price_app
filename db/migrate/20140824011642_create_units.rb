class CreateUnits < ActiveRecord::Migration
  def change
    create_table :units do |t|
      t.references :unit_category
      t.decimal :amount, precision: 15, scale: 4
      t.boolean :default

      t.timestamps
    end
  end
end
