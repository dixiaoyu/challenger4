module SessionsHelper
  def sign_in(member)
    cookies.permanent.signed[:remember_token] = [member.coy_id, member.mbr_id]
    self.current_user = member
  end
  
  def current_user=(user)
    @current_user = user
  end
  
  def current_user
    @current_user ||= user_from_remember_token
  end
  
   private
     def user_from_remember_token
       User.authenticate_with_salt(*remember_token)
     end
     
     def remember_token
       cookies.signed[:remember_token] || [nil, nil]
     end
end
