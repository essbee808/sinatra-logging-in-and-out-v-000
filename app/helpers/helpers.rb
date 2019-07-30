require 'pry'
class Helpers
  def self.current_user(hash)
    hash[:user_id]
  end
  
  def self.is_logged_in?
    #accept session hash as argument
    #return true if user_id is in session hash; false if not
    # use !! operator
  end
end
