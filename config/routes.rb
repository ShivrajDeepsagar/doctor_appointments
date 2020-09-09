Rails.application.routes.draw do
  resources :doctor_appointments do
    get 'get_appointments_for_the_day', :on => :collection
  end
  resources :doctors do
    get 'get_my_appointments_today', :on => :member
  end

  post 'authenticate', to: 'authentication#authenticate'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
