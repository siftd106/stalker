Stalker::Application.routes.draw do
  devise_for :users

  root to: 'pages#index'

  resources :students, :only => [:index, :show]
end
