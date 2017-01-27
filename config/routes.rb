Rails.application.routes.draw do
  root 'pictures#index'

  resources :pictures

  get 'pictures' => 'pictures#index'
  get 'pictures/new' => 'pictures#new' # this is also a new line of code
  get 'pictures/:id/edit' => "pictures#edit", as: "edit_picture"
  get 'pictures/:id' => 'pictures#show', as: 'picture'


  post 'pictures' => 'pictures#create' # this is a new line of code
  patch 'pictures/:id' => "pictures#update"
  delete 'pictures/:id' => 'pictures#destroy', as: "delete_picture"

end
