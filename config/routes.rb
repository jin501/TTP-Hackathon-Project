Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resource :users, only: []
  
  namespace :v1, defaults: { format: :json } do
    resource :login, only: [:create], controller: :sessions
  end

end
