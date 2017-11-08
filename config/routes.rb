Rails.application.routes.draw do
  root 'site#search'
  get 'site/search'
  post 'site/search'
  resources :artists
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
