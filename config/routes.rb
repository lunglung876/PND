PND::Application.routes.draw do
  resources :monsters
  root to: 'monsters#index'
  #match '/', to: 'monsters#home', via: 'get'
  match 'new', to: 'monsters#new', via: :all



end
