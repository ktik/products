# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
products = [ {:product_name => 'Agile Web Development with Rails', :product_price => 27.54, :product_quantity => 10, :related_products => '2, 3, 4'},
{:product_name => 'Programming Ruby 1.9', :product_price => 31.28, :product_quantity => 4, :related_products => '1, 4'},
{:product_name => 'Rails Recipes', :product_price => 21.38, :product_quantity => 9, :related_products => '1, 5'},
{:product_name => 'The Ruby Programming Language', :product_price => 25.00, :product_quantity => 9, :related_products => '1, 2, 6'},
{:product_name => 'Eloquent Ruby', :product_price => 29.98, :product_quantity => 5, :related_products => '2, 3, 4, 6'},
{:product_name => 'Metaprogramming Ruby', :product_price => 35.00, :product_quantity => 2, :related_products => '2, 4, 5'},

]

products.each do |product|
  Product.create!(product)
end
