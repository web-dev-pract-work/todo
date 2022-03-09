Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: "todo#index"
  # resources :todo_list
  post '/todo_list', to: 'todo_list#create'
  get '/todo_list/new', to: 'todo_list#new'
  get '/todo_list', to: 'todo_list#index'
  get '/todo_list/:id/edit', to: 'todo_list#edit'
  get '/todo_list/:id', to: 'todo_list#show'
  patch '/todo_list/:id', to: 'todo_list#update'
  delete '/todo_list/:id', to: 'todo_list#destroy'
end
