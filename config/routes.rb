Rails.application.routes.draw do
  devise_for :admins, path: 'creators'
  
  authenticate :admin do
    mount Avo::Engine, at: Avo.configuration.root_path
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "static_pages#home"

  get '/comparaisons', to: 'comparator_posts#show', as: 'comparaisons'
  get "/comparaison/:id", to: "comparator_posts#index", as: "comparator_post"
  get '/random', to: 'comparator_posts#random', as: 'comparaison_random'
  get '/settings', to: 'static_pages#settings', as: 'settings'
  get '/about', to: 'static_pages#about', as: 'about'

  get '/contact', to: 'static_pages#contact', as: "contact"
  get '/legal', to: 'static_pages#legal', as: "legal"
  get '/support', to: 'static_pages#support', as: "support"
end
