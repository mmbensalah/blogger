Rails.application.routes.draw do
  root to: 'articles#index'
  resources :articles
  # resources :articles, except:[:new]
  # resources :articles, only:[:show, :index]
  # order does matter, last one will execute
end
