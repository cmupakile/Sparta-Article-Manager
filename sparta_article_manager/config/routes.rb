Rails.application.routes.draw do
  get 'article/index'

  get 'picture/index'

  get 'welcome/index'

  resources :pictures do
    resources :articles, only: [:create]
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
