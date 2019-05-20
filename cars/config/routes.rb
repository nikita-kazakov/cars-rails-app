Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'cars#index'
  get '/cars/new' => 'cars#new', as: 'new_car'
  get '/cars/:id/edit' => "cars#edit", as: 'edit_car'
  get '/cars/:id' => "cars#show", as: 'car'

  patch '/cars/:id' => "cars#update"

  #resources :cars


end
