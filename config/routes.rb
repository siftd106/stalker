Stalker::Application.routes.draw do
  devise_for :users

  resources :students, :only => [:index]
  resources :courses, :only => [:index, :show]

  root :to => redirect('/students')

end
