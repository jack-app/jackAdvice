Rails.application.routes.draw do
  root 'products#index'
  resources :products, except:[:edit, :destroy]
    resources :comments, except:[:index, :show, :new, :edit, :update, :destroy]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
