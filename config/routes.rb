Rails.application.routes.draw do
  resources :books, only: [:index, :show, :edit]
  get root :to => 'homes#top'
  post 'books' => 'books#create'

  patch 'books/:id' => 'books#update' , as: 'update_book'
  delete 'books/:id' => 'books#destroy', as: 'destroy_book'
end
