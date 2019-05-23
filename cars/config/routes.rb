Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'cars#index'
  get '/cars' => 'cars#index', as:'cars'
  get '/cars/new' => 'cars#new', as: 'new_car'
  post '/cars' => 'cars#create'
  get '/cars/:id/edit' => 'cars#edit', as: 'edit_car'
  get '/cars/:id' => 'cars#show', as: 'car'
  patch '/cars/:id' => "cars#update"
  delete '/cars/:id' => "cars#destroy"

  #resources :cars


end
