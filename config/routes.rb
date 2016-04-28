Rails.application.routes.draw do
  devise_for :users
  root 'home#index'
  
  get '/' => 'home#index'
  get 'display' => 'home#display'
  get 'mypaper/:id' => 'home#mypaper'
  get 'search' => 'home#search'
  get 'delete/:id' => 'home#delete'
  get 'update_view/:id' => 'home#update_view'
  get 'user' => 'home#user'
  get 'reply' => 'home#reply'
  get 'reply_content' => 'home#reply_content'
  
  post 'write' => 'home#write' # 회원전용 글쓰기 페이지
  post 'un_write' => 'home#un_write' # 비회원전용 글쓰기 페이지
  post 'search_process' => 'home#search_process'
  post 'update/:id' => 'home#update'
  post 'reply_process' => 'home#reply_process'

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
