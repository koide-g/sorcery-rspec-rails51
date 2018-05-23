Rails.application.routes.draw do
  root :to => 'users#index'
  resources :user_sessions
  resources :users

  get 'login' => 'user_sessions#new', :as => :login
  post 'logout' => 'user_sessions#destroy', :as => :logout
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html


  # letter_opener
  mount LetterOpenerWeb::Engine, at: '/letter_opener' if Rails.env.development?
end
