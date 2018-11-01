class GossipsController < ApplicationController
  def new
    puts "...........SERVEUR : dans la méthode new du controller gossips"
    @gossip = Gossip.new
  end

  def create
    puts "...........SERVEUR : dans la méthode create du controller gossips"
    puts "...........SERVEUR : $user_log.id : #{$user_log.id}"
    puts "...........SERVEUR : $user_log.name : #{$user_log.name}"
    puts "...........SERVEUR : $user_log.email : #{$user_log.email}"
    gossip = Gossip.new
    gossip.content = params[:gossip][:content]
    gossip.user_id = $user_log.id
    gossip.save
    @gossip_id = gossip.id
    @gossip_content = gossip.content
  end

  def gossips
    @gossip_id = params[:gossip_id]
  	@gossip = Gossip.find(params[:gossip_id])
  end
end
