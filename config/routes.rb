Quickmoviereviews::Application.routes.draw do
	
  devise_for :users

	root :to => 'movies#index'

  resources :movies

  resources :reviews

end
