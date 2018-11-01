class RegistrationController < ApplicationController

  def new
    $user_log = User.new
  end

  def log
    @users = User.all
    @log_test = false
    @users.each do |user|
      puts "...........SERVEUR : #{@log_test}"
      puts "...........SERVEUR : #{params[:user][:email]} == #{user.email} ?"
      if params[:user][:email] == user.email && params[:user][:password] == user.password
        puts "...........SERVEUR : identification ok"
        @log_test = true
        $user_log.id = user.id
        $user_log.name = user.name
        $user_log.email = user.email
        $user_log.password = user.password
        puts "...........SERVEUR : $user_log.id : #{$user_log.id}"
        puts "...........SERVEUR : $user_log.name : #{$user_log.name}"
        puts "...........SERVEUR : $user_log.email : #{$user_log.email}"
        break
      end
    end
    if @log_test == false
      puts "...........SERVEUR : échec identification"
    end
  end
end
