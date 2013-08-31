get '/' do
  @posts = Post.includes(:tags).order("created_at ASC")
  erb :index
end