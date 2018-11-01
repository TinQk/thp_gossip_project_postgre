# Define parameters
nb_users = 20
nb_gossips = 30
nb_comments = 20
nb_likes = 20

# Create users
nb_users.times do |i|
  u = User.create(
    name: "name_#{i+1}",
    email: "email_#{i+1}",
    password: "password_#{i+1}"
    )
end

# Create gossips
nb_gossips.times do |i|
  g = Gossip.create(
    content: "blablabla_#{i+1}",
    user: User.find(Random.new.rand(1..nb_users))
    )
end

# Create comments
nb_comments.times do |i|
  c = Comment.create(
    content: "comment_#{i+1}",
    user: User.find(Random.new.rand(1..nb_users)),
    gossip: Gossip.find(Random.new.rand(1..nb_gossips))
    )
end

# Create likes
nb_likes.times do |i|
  l = Like.create(
    user: User.find(Random.new.rand(1..nb_users)),
    gossip: Gossip.find(Random.new.rand(1..nb_gossips))
    )
end
