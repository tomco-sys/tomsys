class ChangeDataZip11ToCompanies < ActiveRecord::Migration[5.2]
  def change
    change_column :companies, :zip11, :string
  end
end
