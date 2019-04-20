Rails.application.routes.draw do
  
#  resources :contacts do
#  	get 'phones/new'
#  	get 'phones/update'
#	get 'phones/destroy'
#  end

	get 'contacts/search_contacts'

	resources :contacts

	get 'categories/index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
    root "categories#index"
end
