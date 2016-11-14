Rails.application.routes.draw do
  resources :questions, :users, :comments, :votes

  root 'questions#index', as: :home
end
