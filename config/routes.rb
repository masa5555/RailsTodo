Rails.application.routes.draw do
  post "users/create" => "users#create"
  get 'users/new' => "users#new"
  get "/:id/destroy" => "musts#destroy"
  post "/:id/update" => "musts#update"
  get "/:id/edit" => "musts#edit"
  get 'new' => "musts#new"
  post 'create' => "musts#create"
  get 'index' => "musts#index"

  get '/' => "home#top"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
