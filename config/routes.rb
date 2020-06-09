Rails.application.routes.draw do
  devise_for :users
  get 'rooms/show'
end
