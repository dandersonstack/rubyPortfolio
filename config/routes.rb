Rails.application.routes.draw do
  resources :cars
  resources :cars
  resources :cars
  get 'courses/index'
  get 'pacman/index' => "pacman#index"
  
  # get 'greeter/hello'

  # SAME AS ABOVE
  get 'greeter/hello' => "greeter#hello"
  get 'greeter/goodbye'
  get 'recipes/index' => "recipes#index"
  get 'recipes' => "recipes#index"
  #get 'recipes' =>"recipes#index"
  root 'daniel_home_page#helloworld'
  #get 'recipes' => "recipes#index"
  # You can have the root of your site routed with "root"
  # root 'welcome#index'
end
