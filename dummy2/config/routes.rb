Dummy2::Application.routes.draw do
  devise_for :users
  match '/:auth_token.jpg' => 'welcome#picture'
  root :to => "welcome#index"
  match '/private' => 'restricted_area#index'
end
