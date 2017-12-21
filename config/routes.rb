Rails.application.routes.draw do
  resources :cinemas
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "cinemas#index"
end
