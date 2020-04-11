Rails.application.routes.draw do
  root 'players#index'
    resources :players
    get 'about', to: 'players#about'
end
