Rails.application.routes.draw do
  root 'static_pages#home'
  get '/article', to: 'static_pages#article'
  get '/job', to: 'static_pages#job'

  get '/article/new', to: 'articles#new'
  post '/articles/new', to: 'articles#add'

  resources :articles
end
