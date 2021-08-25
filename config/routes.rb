Rails.application.routes.draw do
  get "/", to: "posts#index"
  mount LetterOpenerWeb::Engine, at: '/inbox' if Rails.env.development?
  resources :posts do
    collection do
      post :confirm
    end
  end
  get 'sessions/new'
  resources :users, only: [:new, :create, :show, :update, :edit]
  resources :sessions, only: [:new, :create, :show, :destroy]
  resources :favorites
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
