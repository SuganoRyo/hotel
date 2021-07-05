Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: 'users/registrations', sessions: 'users/sessions' }
  get 'users/show'
  
  root 'comments#index'
  get 'comments/index'
  
  post '/registrations/user' => 'registrations#edit'
  
  get 'reservations/index'
  
  get 'hotels/hello'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :reservations
  resources :registrations
  resources :users, only: [:show]
end