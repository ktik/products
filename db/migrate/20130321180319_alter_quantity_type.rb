class AlterQuantityType < ActiveRecord::Migration
  def up
    change_column :products, :product_quantity, :string
  end

  def down
    change_column :products, :product_quantity, :integer
  end
end
