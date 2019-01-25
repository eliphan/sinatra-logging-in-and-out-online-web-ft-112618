class Helpers
  def self.current_user(session) #This class method will take one arguement of the user's session
    @user = User.find_by_id(session[:user_id]) #This will set an instance variable equal to the value                                             # of the user_id in the session hash
  end        
          
  def self.is_logged_in?(session)
    !!session[:user_id]
  end
end