Hckrfeed::Application.routes.draw do
  resources :comments


  resources :links do
    member do
      get :upvote
    end
  end
  root :to => 'links#index'
end
