class ProfileController < ApplicationController
  
  layout "profile"
  
  def student_profile
    @student = Student.find(session[:student_id])
  end
  
end
