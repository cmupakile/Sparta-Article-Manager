Rails.application.routes.draw do

# set this as the root.
# if root is selected in the browser. display index page
root to: "articles#index"

# allows all the CRUD actions
resources :articles
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
