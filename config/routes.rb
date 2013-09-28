PND::Application.routes.draw do
  resources :monsters
  root to: 'monsters#index'
  #match '/', to: 'monsters#home', via: 'get'
  match 'new', to: 'monsters#new', via: :all
  match 'search', to: 'monsters#search', via: :all
  match "monsters/result", to: "monsters#result", via: "post"


end
