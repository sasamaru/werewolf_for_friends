Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :villages do
  	resources :players do
  		resources :comments , :only => [:create]
  	end
  end

  #rootが普通にアクセスした時のhomeになる
  root 'villages#index'
end
