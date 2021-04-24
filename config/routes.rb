Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # Create
  get '/articles/new', to: 'articles#new'
  post 'articles', to: 'articles#create'

  # Read
  get '/articles', to: 'articles#index'

  get 'articles/:id', to: 'articles#show', as: :article

  # Update
  get '/articles/:id/edit', to: 'articles#edit'
  patch '/articles/:id', to: 'articles#update'

  # Delete

  delete 'article/:id', to 'articles#destroy'
end
