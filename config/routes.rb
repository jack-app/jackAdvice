Rails.application.routes.draw do
  root 'events#index'
  resources :events do
    resources :products do#, except:[:edit, :destroy]
      resources :comments, except:[:index, :show, :edit, :update, :destroy]
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
