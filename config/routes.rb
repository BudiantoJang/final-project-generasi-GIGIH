Rails.application.routes.draw do
  get "/" => "home#top"

  get "items" => "items#index"
  get "items/new" => "items#new"
  post "items/create" => "items#create"
  get "items/:id" => "items#show"
  get "items/:id/edit" => "items#edit"
  post "items/:id/update" => "items#update"
  post "items/:id/destroy" => "items#destroy"

  get "categories" => "categories#index"
  get "categories/new" => "categories#new"
  post "categories/create" => "categories#create"
  post "categories/:id/destroy" => "categories#destroy"

  get "order_details/:order_id/new" => "order_details#new"
  post "order_details/:order_id/create" => "order_details#create"
  post "order_details/:order_id/:id/destroy" => "order_details#destroy"
 
  get "orders" => "customers#index"
  get "orders/revenue" => "orders#revenue"
  get "/orders/revenue/:date" => "orders#revenue_detail"
  post "/orders/:id/change_status" => "orders#change_status"
  get "orders/:id" => "orders#show"
  post "orders/:id/create" => "orders#create"
  post "orders/:id/destroy" => "orders#destroy"
end
