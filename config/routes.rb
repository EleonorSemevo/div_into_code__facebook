Rails.application.routes.draw do
  resources :posts do
    collection do
      post :confirm
    end
  end
  get 'sessions/new'
  resources :users, only: [:new, :create, :show, :update, :edit]
  resources :sessions, only: [:new, :create, :show]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
