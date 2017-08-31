Rails.application.routes.draw do
  root 'artist#index'

  resources :artist do
    resources :songs
  end

end
