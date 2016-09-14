Rails.application.routes.draw do


root 'static_pages#home'
  get '/materials', to: 'static_pages#materials'
  get '/schedules', to: 'static_pages#schedules'
  get  '/about',   to: 'static_pages#about'
  get  '/contact', to: 'static_pages#contact'
  get  '/malts',  to: 'malts#index'
  post  '/malts',  to: 'malts#create'
  get  '/hops',  to: 'hops#index'
  post  '/hops',  to: 'hops#create'
  get  '/yeasts',  to: 'yeasts#index'
  post  '/yeasts',  to: 'yeasts#create'
  get  '/brews',  to: 'brews#index'
  post  '/brews',  to: 'brews#create'
  get  '/cleans',  to: 'cleans#index'
  post  '/cleans',  to: 'cleans#create'
  resources :malts
  resources :hops
  resources :yeasts
  resources :brews
  resources :cleans
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
