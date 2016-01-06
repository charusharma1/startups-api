Rails.application.routes.draw do

    resources :startups
    namespace :api do
      namespace :v1 do
        resources :startups 
      end
    end
  # root to: "startups#index"
  
  # get '/startups', to: 'startups#index'
  # get '/startups/new', to: 'startups#new'
  # post '/startups', to: 'startups#create'
  # get '/startups/:id', to: 'startups#show'
  # get '/startups/:id/edit', to: 'startups#edit'
  # patch '/startups/:id', to: 'startups#update' 
  # delete '/startups/:id', to: 'startups#destroy'
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'startups/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'startups/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :startups

  # Example resource route with options:
  #   resources :startups do
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
  #   resources :startups do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :startups do
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
  #     # Directs /admin/startups/* to Admin::startupsController
  #     # (app/controllers/admin/startups_controller.rb)
  #     resources :startups
  #   end
end
