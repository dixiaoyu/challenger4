class SessionsController < ApplicationController
  def new
  end

  def create
    debugger
    member = CrmMemberList.authenticate(params[:session][:mbr_id],params[:session][:password])
    if member.nil?       
      flash.now[:error] = "Invalid passport/password combination."
      @title = "Sign in"
      render 'new'
    else
      sign_in member
      redirect_to member  
    end                             
  end 

  def destory 
    sign_out
    redirect_to root_path
  end


end
