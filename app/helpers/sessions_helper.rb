module SessionsHelper
  def sign_in(member)
    cookies.permanent.signed[:remember_token] = [member.mbr_id,member.coy_id]
    self.current_user = member
  end
  
  def current_user=(member)
    @current_user = member
  end
  
  def current_user
    @current_user ||= user_from_remember_token
  end
  
  def signed_in?
    !current_user.nil?
  end
  
  def sign_out
    cookies.delete(:remember_token)
    self.current_user = nil
  end
  
  private
    def user_from_remember_token
      CrmMemberList.authenticate_with_salt(*remember_token)
    end
   
    def remember_token
      cookies.signed[:remember_token] || [nil, nil]
    end
end
