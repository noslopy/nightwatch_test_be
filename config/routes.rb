Rails.application.routes.draw do
  use_doorkeeper

   namespace :api do
    namespace :v1 do
      get '/users/me', to: 'users#me'
      resources :users

      get '/questions', to: 'questions#index'
      get '/:question_slug', to: 'questions#show'
      post '/questions/new', to: 'questions#new'
    end
  end
end
