class AddColumnToCompanies < ActiveRecord::Migration[5.2]
  def change
    add_column :companies, :approval, :integer
  end
end
