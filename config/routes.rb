Rails.application.routes.draw do
  root 'products#index'
  resources :products do#, except:[:edit, :destroy]
    resources :comments, except:[:index, :show, :edit, :update, :destroy]
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
