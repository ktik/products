Myproducts::Application.routes.draw do
  resources :products
  root :to => redirect('products')
end
