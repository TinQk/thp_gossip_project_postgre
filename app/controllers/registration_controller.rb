class RegistrationController < ApplicationController

  def new
    $user_log = User.new
  end

  def log
    @users = User.all
    @log_test = false
    @users.each do |user|
      puts @log_test
      puts "#{params[:user][:email]} == #{user.email} ?"
      if params[:user][:email] == user.email && params[:user][:password] == user.password
        puts "identification ok"
        @log_test = true
        $user_log.name = user.name
        $user_log.email = user.email
        $user_log.password = user.password
        break
      end
    end
    if @log_test == false
      puts "échec identification"
    end
  end
end
