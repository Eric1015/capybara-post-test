Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  match '/posts/new', to: 'posts#new', via: :get
  post '/posts', to: 'posts#create'
  resources :posts
end
