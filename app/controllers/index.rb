get '/' do
  @posts = Post.order("created_at ASC")
  erb :index
end