class CrmMemberListsController < ApplicationController
  def new
    @member = CrmMemberList.new
  end

  def index
    @members = CrmMemberList.all
  end

  def show
    #@member = CrmMemberList.find[params[:coy_id],params[:mbr_id]]    
    @member = CrmMemberList.find(params[:id].split)
  end  
  
  def edit
  end

  def create
    @member = CrmMemberList.new(params[:crm_member_list])
    if @member.save
      #````
    else 
      render 'new'  
    end
  end

  def destory
  end

end
