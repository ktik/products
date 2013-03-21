class AlterPriceType < ActiveRecord::Migration
  def up
    change_column :products, :product_price, :string
  end

  def down
    change column :products, :product_price, :decimal
  end
end
