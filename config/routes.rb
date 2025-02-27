Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :flights, only: :index
  delete '/flights/:id/passengers', to: 'flight_passengers#destroy'
  resources :airlines, only: :show
end
