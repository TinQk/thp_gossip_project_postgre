class HomeController < ApplicationController
  def index
    @users = User.all
    @gossip_last = Gossip.last
  end
end
