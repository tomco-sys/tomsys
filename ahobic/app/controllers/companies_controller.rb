class CompaniesController < ApplicationController

  def index
  end

  def create
    Company.create(company_name: com_params[:company_name], company_kana: com_params[:company_kana])
    @companys = Company.all
  end

  def edit
    @companys = Company.all
  end

  private

  def com_params
    params.permit(:company_name, :company_kana)
  end

end
