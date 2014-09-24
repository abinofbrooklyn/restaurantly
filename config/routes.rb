Rails.application.routes.draw do
  get 'restaurants/show'

  get 'restaurants/index'

  get 'restaurants/new'

  get 'restaurants/create'

  get 'restaurants/edit'

  get 'restaurants/update'

  get 'restaurants/destroy'

  resources :restaurants
end
