class RenameZip11ColumnToCompanies < ActiveRecord::Migration[5.2]
  def change
    rename_column :companies, :zip11, :zip12
  end
end
