class CreateProducts < ActiveRecord::Migration
  def up
    create_table 'products' do |p|
      p.string 'product_name'
      p.decimal 'product_price'
      p.integer 'product_quantity'
      p.string 'related_products'
    end
  end

  def down
    drop_table 'products'
  end
end
