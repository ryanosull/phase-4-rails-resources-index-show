Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  # get '/birds', to: 'birds#index'
  # get '/birds', to: 'bords#show'

  resources :birds, only: [:index, :show]

end
