Freekart::Application.routes.draw do

  
 

  resources :products


    resources :vendors
	resources :vendorsessions, only: [:new, :create, :destroy]
 
  resources :contacts




  resources :users
  resources :sessions, only: [:new, :create, :destroy]

   
		match '/vendorsignup',  to: 'vendors#new'
		
		match '/vendorsignin',  to: 'vendorsessions#new'
		match '/vendorsignout', to: 'vendorsessions#destroy', via: :delete
   

   match '/new', to: 'contacts#new'
   match '/productnew', to: 'products#new' 

         
  

  match '/signup',  to: 'users#new'

  match '/signin',   to: 'sessions#new'

  match '/signout',  to: 'sessions#destroy', via: :delete
 
	

  match '/home', to: 'shop#home'
   match '/about', to: 'shop#about'
   match '/disclaimer', to: 'shop#disclaimer'



   match '/categories', to: 'categories#category'
		match '/bags', to: 'categories#bags'
		match '/travelbags', to: 'categories#travelbags'
		match '/laptopbags', to: 'categories#laptopbags'

		match '/bagsaddpage1', to: 'categories#bagsaddpage1'
		match '/bagsaddpage2', to: 'categories#bagsaddpage2'
		match '/bagsaddpage3', to: 'categories#bagsaddpage3'

		match '/travelbagsaddpage1', to: 'categories#travelbagsaddpage1'
		match '/travelbagsaddpage2', to: 'categories#travelbagsaddpage2'
		match '/travelbagsaddpage3', to: 'categories#travelbagsaddpage3'

		match '/laptopbagsaddpage1', to: 'categories#laptopbagsaddpage1'
		match '/laptopbagsaddpage2', to: 'categories#laptopbagsaddpage2'
		match '/laptopbagsaddpage3', to: 'categories#laptopbagsaddpage3'

		match '/books', to: 'categories#books'
		match '/booksaddpage1', to: 'categories#booksaddpage1'
		match '/booksaddpage2', to: 'categories#booksaddpage2'
		match '/booksaddpage3', to: 'categories#booksaddpage3'



		match '/authors', to: 'categories#authors'	
		match '/authorsaddpage1', to: 'categories#authorsaddpage1'
		match '/authorsaddpage2', to: 'categories#authorsaddpage2'
		match '/authorsaddpage3', to: 'categories#authorsaddpage3'

		match '/english', to: 'categories#english'
		match '/englishaddpage1', to: 'categories#englishaddpage1'
		match '/englishaddpage2', to: 'categories#englishaddpage2'
		match '/englishaddpage3', to: 'categories#englishaddpage3'


		match '/jersey', to: 'categories#jersey'
		match '/jerseyaddpage1', to: 'categories#jerseyaddpage1'
		match '/jerseyaddpage2', to: 'categories#jerseyaddpage2'
		match '/jerseyaddpage3', to: 'categories#jerseyaddpage3'

		match '/menjersey', to: 'categories#menjersey'
		match '/menjerseyaddpage1', to: 'categories#menjerseyaddpage1'
		match '/menjerseyaddpage2', to: 'categories#menjerseyaddpage2'
		match '/menjerseyaddpage3', to: 'categories#menjerseyaddpage3'

		match '/womenjersey', to: 'categories#womenjersey'
		match '/womenjerseyaddpage1', to: 'categories#womenjerseyaddpage1'
		match '/womenjerseyaddpage2', to: 'categories#womenjerseyaddpage2'
		match '/womenjerseyaddpage3', to: 'categories#womenjerseyaddpage3'

		match '/kids', to: 'categories#kids'
		match '/kidsaddpage1', to: 'categories#kidsaddpage1'
		match '/kidsaddpage2', to: 'categories#kidsaddpage2'
		match '/kidsaddpage3', to: 'categories#kidsaddpage3'

  #  match '/vendorentry', to: 'vendors#vendorentry'
 




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
   root :to => 'shop#home'

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'
end
