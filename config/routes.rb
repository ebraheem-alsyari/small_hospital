Rails.application.routes.draw do
  # root to: "home#index"
  
  # get 'edit'. to: 'details#edit'
  
  get 'details/id/delete'
  get '/patients/:id', to: 'details#destroy'
  resources :details do
    member do
      get :delete
      post :edit
    end



    patch "details/edit"
  end

  get "sign_up", to: "registrations#new"
  post "signup", to: "registrations#create"





  get "home_page", to: "start#index", as: :home
  patch 'edit' => 'details#update'
  

  # patch 'edit' => 'details#update'
  # resources :details, path: '/details/edit'
  root 'start#index'
  # delete 'tests#destroy'
  get '/patients/:id', to: 'tests#destroy'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

end


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
