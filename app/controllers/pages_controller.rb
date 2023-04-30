class PagesController < ApplicationController
  def home
    # redirect to sign up page if no user is logged in
    redirect_to login_path unless @current_user.present? 
  end
end
