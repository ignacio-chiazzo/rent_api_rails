class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.string :description
      t.decimal :price
      t.string :shape_type
      t.integer :count_uses, default: 0

      t.references :category, index: true
      t.references :color, index: true

      t.timestamp
    end
  end
end
