Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :quizzes
    end
  end
  post 'auth/:provider/callback', to: 'api/v1/users#create'
end
