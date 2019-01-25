class Helpers
  def self.current_user(session) #This class method will take one arguement of the user's session
    @user = User.find_by_id(session[:user_id]) #This will set an instance variable equal to 
  end      #the program will find the match   # the value of the user_id in the session hash
          # for the user_id
          # the value of the user_id is the arguement/param for find_by_id method
  def self.is_logged_in?(session)
    !!session[:user_id]
  end
end