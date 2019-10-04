Rails.application.routes.draw do

  devise_for :users
root "tops#index"

resource :companies do
  collection do
    get :index
    get :customer_new
    get :supplier_new
  end
end


end
