class LikesController < ApplicationController
  def new
    like = Like.new
  end

  def create
    like = Like.new
    like.user_id = $user_log.id
    like.gossip_id = $gossip.id
    like.save
    redirect_to "/user/moussaillon"
  end

  def destroy
    likes = Like.all
    likes.each do |like|

      puts "...........SERVEUR : like.gossip.id : #{like.gossip.id}"
      puts "...........SERVEUR : $gossip.id : #{$gossip.id}"
      puts "...........SERVEUR : #{like.gossip.id == $gossip.id}"
      puts "...........SERVEUR : like.user.id : #{like.user.id}"
      puts "...........SERVEUR : $user_log.id : #{$user_log.id}"
      puts "...........SERVEUR : #{like.user.id == $user_log.id}"
      
      if like.gossip.id == $gossip.id && like.user.id == $user_log.id
        puts "...........SERVEUR : dans le if"
        id = like.id
        puts "...........SERVEUR : id du like à supprimer : #{id}"
        Like.all.find(id).delete
        break
      end
    end
    redirect_to "/user/moussaillon"
  end
end
