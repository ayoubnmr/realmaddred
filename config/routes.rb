Rails.application.routes.draw do
root 'players#new'

resources :players
end
