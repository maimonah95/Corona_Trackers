Rails.application.routes.draw do
  devise_for :users , :controllers => {registrations: 'registrations'}
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
   root 'follows#index'
  resources :follows
  # get 'follow_up_schedule/new', to:'follow_up_schedule#new'
  # post 'follow_up_schedule', to: 'follow_up_schedule#create'
end
