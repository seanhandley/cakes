Rails.application.routes.draw do
  resources :suppliers
  resources :units
  resources :supplier_ingredients
  resources :recipe_ingredients
  resources :recipes
  resources :raw_ingredients
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root :to => 'dashboard#index'
end
