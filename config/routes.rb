resources :issues do
  resources :simple_checklists, only: [:create, :destroy] do
    member do
      post :toggle
    end
  end
end
