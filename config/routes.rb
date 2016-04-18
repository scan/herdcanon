Rails.application.routes.draw do
  get 'posts/index'

  get 'posts/new'

  get 'posts/edit'

  root to: 'home#index'

  devise_for :users
end
