Rails.application.routes.draw do
  root 'houses#index'
  resources :houses do
    resources :characters
  end

  resources :characters do
    resources :quotes
  end
end
