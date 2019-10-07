Rails.application.routes.draw do

  get 'users/new'
  get 'users/show'
  get 'users/create'
  get 'users/delete'
  get 'users/showScoreHtml', to: 'users#showScoreHtml'
  get 'users/showScoreJson', to: 'users#showScoreJson'

  root to: 'users#new'
  resources :users
end
