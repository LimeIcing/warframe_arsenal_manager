Rails.application.routes.draw do
  resources :primary_weapons do
    collection do
      get :fetch
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
