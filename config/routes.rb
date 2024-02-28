Rails.application.routes.draw do

  devise_for :users, controllers: {
    registrations: 'users/registrations',
    sessions: 'users/sessions'
}

  root to: 'home#index'

  get 'users' => redirect('/users/edit')
  get 'users/profile_update' => redirect('/users/profile_edit')

  get 'errors/reservation_error'
  get 'search/index'

  get 'users/account_show', to: 'users#account_show', as: 'account_show'
  get 'users/profile_show', to: 'users#profile_show', as: 'profile_show'
  get 'users/profile_edit', to: 'users#profile_edit', as: 'profile_edit'
  patch 'users/profile_update', to: 'users#profile_update', as: 'profile_update'

  resources :rooms do
    collection do
      get 'search', to: 'search#search', as: 'search'
    end
  end

  resources :reservations do
    member do
      post :confirm, action: :confirm_new
      patch :confirm_edit
    end
  end

  get '/reservations/:id/confirm', to: 'errors#reservation_error'
  get '/reservations/:id/confirm_edit', to: 'errors#reservation_error'
end
