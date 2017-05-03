Rails.application.routes.draw do
  get '/products' => 'products#products_all'
end
