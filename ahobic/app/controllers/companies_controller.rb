class CompaniesController < ApplicationController

  def create
    Company.create(company_name: com_params[:company_name], company_kana: com_params[:company_kana])
  end

  private

  def com_params
    params.permit(:company_name, :company_kana)
  end

end
