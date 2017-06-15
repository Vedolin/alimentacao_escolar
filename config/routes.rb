Rails.application.routes.draw do
  resources :meals
  resources :schools
  resources :kinds
  resources :ages
  resources :executions
  resources :groups
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
