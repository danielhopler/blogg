Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  resources :posts

  get 'about' => 'welcome#about'
  get 'welcome/contact'

  # Defines the root path route ("/")
   root "welcome#index"
end
