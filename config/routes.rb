Rails.application.routes.draw do
  devise_for :users
  get 'sessions/new'

  get 'welcome/index'

  resources :articles do
    #nested resource
    resources :comments
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'welcome#index'
end
