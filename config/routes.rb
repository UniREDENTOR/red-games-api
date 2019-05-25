Rails.application.routes.draw do
  namespace :api do
    get 'photos', to: 'photos#index'

    get 'days', to: 'days#index'
    get 'days/:id', to: 'days#show'

    get 'teams', to: 'teams#index'

    get 'ranking', to: 'ranks#index'

    get 'events', to: 'events#index'
    get 'events/:id', to: 'events#teams'
    post 'events/:event_id/:team_id', to: 'events#vote'
  end

  devise_for :users
  mount RailsAdmin::Engine => '/', as: 'rails_admin'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
