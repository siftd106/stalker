Stalker::Application.routes.draw do
  devise_for :users

  root to: 'pages#index'

  resources :pages, only: :index

  resources :students, :only => [:index, :show]

  resources :courses do
    get 'remove_enrollment' => 'courses#remove_enrollment'
    delete 'destroy_enrollment' => 'courses#destroy_enrollment'
  end

  resources :enrollments, :only => [:new, :create]

end
