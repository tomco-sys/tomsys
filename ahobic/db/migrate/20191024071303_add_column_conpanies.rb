class AddColumnConpanies < ActiveRecord::Migration[5.2]
  def change
    add_column :companies, :status, :integer
    add_column :companies, :dometic, :integer
    add_column :companies, :registnum, :string
    add_column :companies, :abb_name, :string
    add_column :companies, :zip11, :integer
    add_column :companies, :address1, :text
    add_column :companies, :address2, :text
    add_column :companies, :address3, :text
    add_column :companies, :tel1, :string
    add_column :companies, :fax1, :string
    add_column :companies, :capital, :string
    add_column :companies, :c_department, :string
    add_column :companies, :c_position, :string
    add_column :companies, :person_in_c, :string
    add_column :companies, :c_mail, :string
    add_column :companies, :currency, :integer
  

  end
end
