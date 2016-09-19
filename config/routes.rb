Rails.application.routes.draw do
  devise_for :users
  resources :questions

  root "pages#show", page: "home"
  post 'post/:id' => 'questions#updateAnswer1'
end
