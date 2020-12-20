Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get 'posts/home_en' => 'posts#home_en'

  get 'posts/home' => 'posts#home'

  get 'posts/index' => 'posts#index'

  get 'posts/index_en' => 'posts#index_en'

  get 'posts' => 'posts#index'

  get 'posts/question' => 'posts#question'

  get 'posts/question_en' => 'posts#question_en'

   get 'posts/new' => 'posts#new'

   get 'posts/new_en' => 'posts#new_en'
   
   post 'posts' => 'posts#create'

   get 'posts/:id' => 'posts#show',as: 'post'

   get 'posts/:id/show_en' => 'posts#show_en', as:'post_show_en'
   get 'posts/:id/edit_en' => 'posts#edit_en', as:'post_edit_en'
   
   patch 'posts/:id' => 'posts#update'
   delete 'posts/:id' => 'posts#destroy'
   get 'posts/:id/edit' => 'posts#edit', as:'edit_post'
   
   root 'posts#index'

   patch 'users/:id' => 'mypages#update', as:'update_mypages'
   get 'users/:id/edit' => 'mypages#edit', as:'edit_mypages'
   get 'users/:id' => 'mypages#show', as:'show_mypages'

   get 'users/:id/edit_en' => 'mypages#edit_en', as:'edit_en_mypages'
   get 'users/:id/show_en' => 'mypages#show_en', as:'show_en_mypages'


    resources :posts do
    resources :likes, only: [:create, :destroy]
    resources :comments, only: [:create,:destroy,:show]
    resources :users, :only => [:show, :edit, :update]
   end
   
end
