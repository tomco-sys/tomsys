class AddColumnCompanies < ActiveRecord::Migration[5.2]
  def change
    add_column :companies, :period_day, :string
    add_column :companies, :collect_month, :string
    add_column :companies, :collect_day, :string
    add_column :companies, :collect_condition, :string
    add_column :companies, :collect_way, :string
    add_column :companies, :pay_term, :string
    add_column :companies, :remarks, :text
    add_column :companies, :h_zip, :string
    add_column :companies, :h_adress1, :string
    add_column :companies, :h_adress2, :string
    add_column :companies, :h_adress3, :string
    add_column :companies, :h_tel, :string
    add_column :companies, :h_fax, :string

  end
end
