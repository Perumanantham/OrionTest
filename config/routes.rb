Rails.application.routes.draw do
  #get 'user_comments/list'
  get "user_comments", to: "user_comments#index"
  resources :user_comments, only: [:index, :show]

  root :to => "user_comments#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
