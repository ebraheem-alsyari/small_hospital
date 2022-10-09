Rails.application.routes.draw do
  
  get "sign_up", to: "registrations#new"
  post "sign_up", to: "registrations#create"

  get "sign_in", to: "sessions#new"
  post "sign_in", to: "sessions#create"

  delete "logout", to: "sessions#destroy"
  
  get 'details/id/delete'
  get '/patients/:id', to: 'details#destroy'
  resources :details do
    member do
      get :delete
      post :edit
    end



    patch "details/edit"
    
    
    
    
    
  end



  get "home_page", to: "start#index", as: :home
  get "Go", to: 'main#index', as: :go
  root 'main#index'
  
  
  
end


  # get 'edit'. to: 'details#edit'
  # patch 'edit' => 'details#update'
  # patch 'edit' => 'details#update'
  # resources :details, path: '/details/edit'
  # delete 'tests#destroy'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # devise_scope :user do
  #   post "sign_up", to: "registrations#create"
  #   post "sign_in", to: "sessions#create"
  #   delete "log_out", to: "sessions#destroy"
  # end


  
  # devise_for :users, :controllers => { registrations: 'registrations' }

  # resources :details do
  #   member do
  #     get :delete
  #   end
  # end
