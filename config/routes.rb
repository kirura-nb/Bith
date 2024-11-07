Rails.application.routes.draw do
  # 初期画面のルート設定
  # root 'home#index'
  root :to => 'users#new'

  resource :users, only: [:new, :show, :edith, :create, :update]

  # ログイン機能のルーティング設定
  get 'login', to: 'sessions#new', as: 'new_sessions'
  post 'login', to: 'sessions#create', as: 'create_sessions'
  delete 'logout', to: 'sessions#destroy', as: 'destroy_sessions'

  # ログイン後のパスを取得
  get 'home/index'
end
