Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
   root 'follow_up_schedule#index'
  resources :follow_up_schedule
end
