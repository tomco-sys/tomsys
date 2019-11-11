class CompaniesController < ApplicationController

  def index
  end

  def create
    @create_comp = Company.create(company_name: com_params[:company_name], company_kana: com_params[:company_kana], approval: com_params[:approval],\
       status: com_params[:status], registnum: com_params[:registnum], dometic: com_params[:dometic], abb_name: com_params[:abb_name], currency: com_params[:currency], zip12: com_params[:zip12], address1: com_params[:address1], address2: com_params[:address2], address3: com_params[:address3], tel1: com_params[:tel1],\
     fax1: com_params[:fax1], capital: com_params[:capital], c_department: com_params[:c_department], c_position: com_params[:c_position], \
      c_mail: com_params[:c_mail], person_in_c: com_params[:person_in_c], currency: com_params[:currency], period_day: com_params[:period_day], \
    collect_month: com_params[:collect_month], collect_day: com_params[:collect_day], collect_condition: com_params[:collect_condition], \
  collect_way: com_params[:collect_way], pay_term: com_params[:pay_term], remarks: com_params[:remarks], h_zip: com_params[:h_zip], \
h_adress1: com_params[:h_adress1], h_adress2: com_params[:h_adress2], h_adress3: com_params[:h_adress3], h_tel: com_params[:h_tel], h_fax: com_params[:h_fax])

  end

  def pre_edit
    @companys = Company.page(params[:page]).per(15)
  end

  def show
    @companys = Company.find(params[:id])
  end

  def destroy
    company = Company.find(params[:id])
    company.destroy
  end

#make pdf format
  def mkpdf
     @companys = Company.all
    respond_to do |format|
      format.html
      format.pdf do
        render pdf: 'mkpdf',                        # pdf ファイル名
               encording: 'UTF-8',                  # 日本語を使う場合には指定する
               #layout: 'pdf.html',                   # レイアウトファイルの指定
               template: 'mkpdf.html.erb'

      end
    end
  end


  private

  def com_params
    params.permit(:company_name, :company_kana, :approval, :status, :registnum, :dometic, :abb_name, :zip12, :address1, :address2, :address3, :tel1, :fax1, :capital,
                  :c_department, :c_position, :person_in_c, :c_mail, :currency, :period_day, :collect_month, :collect_day, :collect_condition, :collect_way, :pay_term, \
                :remarks, :h_zip, :h_adress1, :h_adress2, :h_adress3, :h_tel, :h_fax)
  end

end
