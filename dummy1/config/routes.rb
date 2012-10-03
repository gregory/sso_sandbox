Dummy1::Application.routes.draw do
  devise_for :users

  match '/private' => 'restricted_area#index'
  root :to => "welcome#index"
end
