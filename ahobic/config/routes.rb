Rails.application.routes.draw do

  devise_for :users
root "tops#index"

resources :companies do
  collection do
    get :pre_edit
    get :index
    get :customer_new
    get :supplier_new
    get :mkpdf
  end
end


end
