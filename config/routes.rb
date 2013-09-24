Stalker::Application.routes.draw do
  devise_for :users

  root to: 'pages#index'

  resources :pages, only: :index

  resources :students, :only => [:index, :show]

  resources :courses

  resources :enrollments, :only => [:new, :create]
end
