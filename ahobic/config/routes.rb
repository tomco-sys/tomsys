Rails.application.routes.draw do

root "tops#index"

resource :companies do
  collection do
    get :index
    get :customer_new
    get :supplier_new
  end
end


end
