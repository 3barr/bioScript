Systemstatus::Application.routes.draw do
  root "pages#index"

  #resources :clusters, only: [:index, :show]
  resources :forms, only: [:tool, :download, :setup, :options, :summary]
  resources :surveys, only: [:new, :create, :bbduk_options, :trimmomatic_options, :update]
  resources :pages, only: [:index, :script, :selection]
  get "pages/about"
  get "pages/help"
  get "pages/selection"
  get "pages/index"
  #get "forms/tool"
  #get "forms/download"
  #get "forms/options"
  #get "forms/setup"
  #get "forms/summary"
  
  
  get "surveys/new"
  get "surveys/bbduk_options"
  get "surveys/trimmomatic_options"
  get "surveys/report"
  
  
  match "/surveys/bbduk_options" => "surveys#bbduk_options", :via => :post, :as => :bbduk_options
    


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
