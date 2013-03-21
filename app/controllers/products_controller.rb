require 'csv'

class ProductsController < ApplicationController

  def index
    @products = Product.all
  end
  
  def show
    id = params[:id]
    @product = Product.find(id)
    rel_prod = @product.related_products
    id_list = rel_prod.split(%r{,\s*})
    @product_list = Array.new
    id_list.each do |prod_id|
      @product_list << Product.find(Integer(prod_id))
    end
  end
  
  def update
    file_name = params[:file]
    CSV.foreach(file_name.tempfile, {:headers => true}) do |row|
      #arr = CSV.parse_line(row)
      Product.create!(:product_name => row[1], :product_price => row[2], :product_quantity => Integer(row[3]), :related_products => row[4])
    end
    redirect_to products_path
  end
  
  def destroy
    @product = Product.find(params[:id])
    @product.destroy
    redirect_to products_path
  end
end

