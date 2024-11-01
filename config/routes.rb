Rails.application.routes.draw do
  # 初期画面のルート設定
  root 'home#index'

  # ログイン機能のルーティング設定
  get 'login', to: 'sessions#new', as: 'new_sessions'
  post 'login', to: 'sessions#create', as: 'create_sessions'
  delete 'logout', to: 'sessions#destroy', as: 'destroy_sessions'

  # ログイン後のパスを取得
  get 'home/index'
end
