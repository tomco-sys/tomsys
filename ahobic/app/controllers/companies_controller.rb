class CompaniesController < ApplicationController

  def index
  end

  def create
    @create_comp = Company.create(company_name: com_params[:company_name], company_kana: com_params[:company_kana], approval: com_params[:approval])

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
    params.permit(:company_name, :company_kana, :aproval)
  end

end
