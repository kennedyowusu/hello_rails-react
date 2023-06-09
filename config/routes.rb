Rails.application.routes.draw do
  get 'root/index'

  namespace :api do
    get 'greetings/random', to: 'greetings#random'
  end
end
