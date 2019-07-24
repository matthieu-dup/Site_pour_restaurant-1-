class CreateItemis < ActiveRecord::Migration[5.2]
  def change
    create_table :itemis do |t|
      t.string :name
      t.decimal :quantity
      t.decimal :total
      t.integer :order_id
      t.string :content
      t.decimal :unit_price
      t.integer :quantity_quantity

      t.timestamps
    end
  end
end
