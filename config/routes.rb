Rails.application.routes.draw do
  get "/" => "home#top"
  
  get "items" => "items#index"
  get "items/new" => "items#new"
  post "items/create" => "items#create"
  get "items/:id" => "items#show"
  get "items/:id/edit" => "items#edit"
  post "items/:id/update" => "items#update"
  post "items/:id/destroy" => "items#destroy"
end
