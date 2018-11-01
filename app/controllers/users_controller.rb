class UsersController < ApplicationController
  def new
    puts 'dans new'

    @user = User.new

    puts ""
    puts params["user"]
    puts ""
  end

  def create
    puts 'dans create'

    user = User.new

    puts ""
    puts params
    puts ""

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
  end



end
