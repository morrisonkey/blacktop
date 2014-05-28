# Rails.application.routes.draw do

#   root to: "users#index"

#   resources :users, except: [:new] do
#     resources :favorites do
#       collection do
#         get "search"
#       end
#     end
#     resources :tours do
#       collection do
#         get "search"
#       end
#     end
#   end
#   get "/signup", to: "users#new", as: "new_user"

#   resources :breweries, only: [:index, :show] do
#     collection do
#       get "search"
#     end
#     member do
#       get "take_a_look"
#     end
#   end
  
# end

Rails.application.routes.draw do

  root to: 'games#index'

  # get '/games' => 'games#index'
  # post '/' => 'games#index'
 

  # get '/games/:id' => 'games#show', as: :game

  # post '/games' => 'games#create'

  # get '/games/:id/edit' => 'games#edit', as: :edit_game

  # patch '/games/:id' => 'games#update'

  # get '/games/:id/delete' => 'games#delete'

  # get '/users/:id' => 'users#show'

  get '/user/:id/home' => 'users#home'

  # get '/user/:id/show' => 'users#show', as: :user

  # get '/user/new' => 'users#new'

  # post '/users' => 'users#create'

  # get '/users/:id/edit' => 'games#edit', as: :edit_user

  # get '/user/update' => 'users#update'

  # get '/login/user' => 'users#login'

  get '/users/favorites/:id' => 'users#favorite'

  get 'users/unlike/:id' => 'users#unlike'

  get 'comments/:id/delete' => 'comments#delete'

  get "log_out" => "sessions#destroy", :as => "log_out"
  get "log_in" => "sessions#new", :as => "log_in"
  get "sign_up" => "users#new", :as => "sign_up"

  resources :users

  resource :sessions, only: [:create, :destroy]
  get "/login", to: "sessions#new", as: "new_session"

  resources :games do
    resources :comments, only: [:create, :destroy]
  end

  # map.resources :games, :key => :id do |game|
  #   game.resources :comments, :key => :comment_id
  # end
  # resources :games

  # scope "/games/:id" do
  #   post "/comments", :to => "comments#create", :as => 'game_comments'
  #   delete "/comments", :to => "comments#destroy", :as => 'game_comment'
  # end


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
