require 'api_constraints'

Rails.application.routes.draw do
  #get 'static_pages/home'

  get '/about'  =>  'high_voltage/pages#show', id: 'about'
  get '/contact'  =>  'high_voltage/pages#show', id: 'contact'
  get '/privacy'  =>  'high_voltage/pages#show', id: 'privacy'
  get '/terms'  =>  'high_voltage/pages#show', id: 'terms'

  get '/home', to: redirect('/')

  root :to => 'high_voltage/pages#show', id: 'home'

  namespace :api, defaults: {format: :json}, constraints: {subdomain: 'api' }, path: '/' do
    scope module: :v1, constraints: ApiConstraints.new(version: 1, default: true) do
      resources :courses
    end

  end
  resources :course_contents

  resources :video_contents

  resources :text_contents

  resources :contents



  resources :packages

  resources :payment_methods

  resources :ip_addresses

  resources :physical_addresses

  resources :addresses

  resources :users

end
