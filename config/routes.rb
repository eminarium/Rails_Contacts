Rails.application.routes.draw do
  resources :contacts
  get 'categories/index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
    root "categories#index"
end
