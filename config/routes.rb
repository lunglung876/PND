PND::Application.routes.draw do
  resources :teams

  resources :monsters
  root to: 'monsters#index'
  match 'new', to: 'monsters#new', via: :all
  match 'search', to: 'monsters#search', via: :all
  match "monsters/result", to: "monsters#result", via: :all
  match "monsters/search", to: 'monsters#search', via: :all


end
