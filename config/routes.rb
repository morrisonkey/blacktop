Rails.application.routes.draw do

  root to: 'games#index'

  get '/games' => 'games#index'

  get '/games/:id' => 'games#show', as: :game

  # get '/games/:user_id/new' => 'games#new', as: :game
  get '/new/games' => 'games#new'

  get '/add_photo/games/:game_id' => 'games#add_photo'
  
  get '/games/generate/:name/:game_id' => 'games#generate'
  
  post '/games' => 'games#create'

  get '/games/:id/edit' => 'games#edit', as: :edit_game

  patch '/games/:id' => 'games#update'

  get '/games/:id/delete' => 'games#delete'

  get '/users/:id' => 'users#show'

  get '/user/:id/home' => 'users#home'

  get '/user/:id/show' => 'users#show', as: :user

  get '/user/new' => 'users#new'

  post '/users' => 'users#create'

  get '/users/:id/edit' => 'games#edit', as: :edit_user

  get '/user/update' => 'users#update'

  get '/login/user' => 'users#login'

  get '/users/favorites/:id' => 'users#favorite'

  # post '/login/user' => "users#process_login"

  # get '/user/logout' => "users#end_session"

  get "log_out" => "sessions#destroy", :as => "log_out"
  get "log_in" => "sessions#new", :as => "log_in"
  get "sign_up" => "users#new", :as => "sign_up"
  # root :to => "users#new"
  resources :users
  resources :sessions

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
