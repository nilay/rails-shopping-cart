class CreateOrderLines < ActiveRecord::Migration
  def up
    create_table :order_lines do |t|
      t.integer :order_id
      t.integer :product_id
      t.integer :qty
      t.decimal :unit_price, precision: 10, scale: 2
      t.decimal :total_price, precision: 10, scale: 2

      t.timestamps null: false
    end
  end

  def down
    drop_table :order_lines
  end
end
