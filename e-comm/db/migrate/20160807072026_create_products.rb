class CreateProducts < ActiveRecord::Migration
  def up
    create_table :products do |t|
      t.string :name
      t.text :description
      t.decimal :price, precision: 10, scale: 2
      t.boolean :status, default: true

      t.timestamps null: false
    end
  end

  def down
    drop_table :products
  end
end
