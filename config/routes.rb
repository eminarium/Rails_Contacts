Rails.application.routes.draw do
  get 'phones/new'
  get 'phones/create'
  get 'phones/destroy'
  get 'phones/update'
  resources :contacts
  get 'categories/index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
    root "categories#index"
end
