Rails.application.routes.draw do
  devise_for :users
  get 'faire_part/:id/prix', to: "prices#new", as: "new-price"
  post 'faire_part/:id/prix', to: 'prices#create', as: "create-price"

  get 'faire_part/:id/prix/modification', to: "prices#edit", as: "edit-price"
  patch 'faire_part/:id/prix/update', to: 'prices#update', as: "update-price"

  root to: 'faire_parts#index'

  get "faire_part", to: 'faire_parts#show', as: "show"
  get "faire_part/nouveau", to: 'faire_parts#new'
  post "faire_part", to: "faire_parts#create"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

