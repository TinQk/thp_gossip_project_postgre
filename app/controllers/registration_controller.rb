class RegistrationController < ApplicationController
  def new
    @user_log = User.new
  end

  def log
    @users = User.all
    @users.each do |user|
      if params[:user][:email] == user.email && params[:user][:password] == user.password
        puts "identification ok"
      end
    end
  end
end
