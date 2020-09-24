class FixNullSecond < ActiveRecord::Migration[6.0]
  def change
    change_column :order_items, :product_id, :integer, :null => true

  end
end
