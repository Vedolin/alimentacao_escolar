Rails.application.routes.draw do
  resources :meals
  resources :schools
  resources :kinds
  resources :ages
  resources :executions
  resources :groups

  get 'welcome', to: 'pages#welcome'
  get 'landing', to: 'pages#landing'

  root 'pages#landing'
end
