class CreateOrders < ActiveRecord::Migration
  def up
    create_table :orders do |t|
      t.string :order_no
      t.integer :user_id
      t.integer :total

      t.timestamps null: false
    end
  end

  def down
    drop_table :orders
  end
end
