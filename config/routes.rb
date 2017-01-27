Rails.application.routes.draw do
  root 'pictures#index'
  get 'pictures' => 'pictures#index'

  post 'pictures' => 'pictures#create' # this is a new line of code
  get 'pictures/new' => 'pictures#new' # this is also a new line of code

  get 'pictures/:id' => 'pictures#show', as: 'picture'

  get 'pictures/:id/edit' => "pictures#edit", as: "edit_picture"
  patch 'pictures/:id' => "pictures#update"
end
