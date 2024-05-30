class AdminController < ApplicationController
  def login
    if request.post?
      if params[:username]=="admin" && params[:password]=="1234"
        session[:admin]="admin"
        redirect_to estores_url
      else
        flash[:notice] ="Invalid Credentials"
        render :action =>"login"
      end
    end
  end
  def logout
    session[:admin]=nil
    flash[:notice]="Admin Log Out Successful"
    redirect_to home_index_url
  end
end
