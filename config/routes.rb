Rails.application.routes.draw do



  resources :details do
    member do
      get :delete
    end
  end
  resources :regis
  root 'details#index'
  # delete 'tests#destroy'
  resources :tests
  get '/patients/:id', to: 'tests#destroy'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
