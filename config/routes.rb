Rails.application.routes.draw do
  resources :blogs
  get 'home/index'
  get 'home/programadorgot'
  post 'home/programadorgotresult'
  post 'contact' => 'home#form'

  root to: 'home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
