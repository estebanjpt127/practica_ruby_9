#Rails.application.routes.draw do
  #root 'static_pages/home'
  #get 'static_pages/help'
  #get 'static_pages/about'
  #get 'static_pages/contact'

 # root 'static_pages#home'  # Página de inicio
  #get 'static_pages/help', to: 'static_pages#help'
  #get 'static_pages/about', to: 'static_pages#about'
  #get 'static_pages/contact', to: 'static_pages#contact'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  #get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
#end


Rails.application.routes.draw do
  # Página de inicio
  root 'static_pages#home'

  # Rutas con nombres para las acciones del controlador StaticPages
  get 'help', to: 'static_pages#help', as: :help
  get 'about', to: 'static_pages#about', as: :about
  get 'contact', to: 'static_pages#contact', as: :contact

  # Reveal health status on /up
  get "up" => "rails/health#show", as: :rails_health_check

  # Otras rutas pueden ir aquí
  # root "posts#index"
end
