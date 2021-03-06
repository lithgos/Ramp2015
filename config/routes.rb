RecruitmentProject3App::Application.routes.draw do
  
  # resources :relationships


  root to: "dashboard#index"

  resources :qualifications


  # commented out for multi user registration
  # devise_for :users

  # added for multi user registration
  devise_for :users, controllers: {sessions: :sessions}, :skip => :registrations
  
  devise_for :contractors, :employees, :skip => :sessions, :controllers => { :registrations => 'registrations' }

  resources :relationships do   
    resources :comments
  end

  resources :comments

  resources :jobsearches


  resources :jobs


  resources :companies


  resources :addresses


  resources :controlerooms    


  get 'dashboard/get_current_user_type', to: "dashboard#get_current_user_type"
  get 'dashboard/get_current_contractor', to: "dashboard#get_current_contractor"
  get 'dashboard/get_current_employee', to: "dashboard#get_current_employee"
  get 'dashboard/get_current_company_jobs', to: "dashboard#get_current_company_jobs"
  put 'dashboard/put_potential_contractors', to: "dashboard#put_potential_contractors"
  put 'dashboard/update_available_now', to: "dashboard#update_available_now"
  put 'dashboard/update_distance_travel', to: "dashboard#update_distance_travel"
  put 'dashboard/show_job_interest', to: "dashboard#show_job_interest"
  put 'dashboard/contact_user', to: "dashboard#contact_user"
  put 'dashboard/offer_user', to: "dashboard#offer_user"
  put 'dashboard/accept_user', to: "dashboard#accept_user"  
  put 'dashboard/reject_user', to: "dashboard#reject_user"      
  put 'dashboard/set_current_location', to: "dashboard#set_current_location"
  put 'dashboard/put_toggle_contractor_favourite.json', to: "dashboard#put_toggle_contractor_favourite"
  put 'dashboard/put_toggle_company_block_contractor.json', to: "dashboard#put_toggle_company_block_contractor"


  # The priority is based upon order of creation:
  # first created -> highest priority.

  # Sample of regular route:
  #   match 'products/:id' => 'catalog#view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   match 'products/:id/purchase' => 'catalog#purchase', :as => :purchase
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Sample resource route with options:
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

  # Sample resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Sample resource route with more complex sub-resources
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', :on => :collection
  #     end
  #   end

  # Sample resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
  # root :to => 'welcome#index'

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'
end
