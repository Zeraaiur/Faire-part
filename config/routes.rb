Rails.application.routes.draw do
  root to: 'faire_parts#index'

  get "faire_part", to: 'faire_parts#show', as: "show"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
