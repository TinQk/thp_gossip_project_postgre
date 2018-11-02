class UsersController < ApplicationController
  def new
    puts "...........SERVEUR : dans la méthode new du controller users"

    @user = User.new

    puts "...........SERVEUR : "
    puts "...........SERVEUR : params[:user] = #{params[:user]}"
    puts "...........SERVEUR : "
  end

  def create
    puts "...........SERVEUR : dans la méthode create du controller users"

    user = User.new

    puts "...........SERVEUR : "
    puts "...........SERVEUR : params = #{params}"
    puts "...........SERVEUR : "

    user.name = params[:user][:name]
    user.email = params[:user][:email]
    user.password = params[:user][:password]
    user.save
    @user_id = user.id
    @user_name = user.name
  end

  def user_welcome
    @user_name = params[:user_name]
    @gossips = Gossip.all
    @likes = Like.all
  end



end
