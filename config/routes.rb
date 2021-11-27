Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root to: 'project#index', format: 'json'

  resources :projects, controller: 'project', format: 'json', only: %w[index create] do
    resources :todos, controller: 'todo', format: 'json', only: %i[create update]
  end
end
