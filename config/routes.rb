Rails.application.routes.draw do
  resources :cocktails do
    resources :doses, only: [ :new, :create ]
  end

  resources :ingredients

  delete "doses/:id", to: "doses#destroy"
end
