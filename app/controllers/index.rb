
get '/' do
  @posts = Post.order("created_at ASC")
  erb :index
end

get '/posts/new' do
  erb :create
end

post '/posts/new' do 
  post = Post.create(params[:form])
  redirect "/"
end

delete '/posts/:post_id' do |post_id|
  Post.destroy(post_id)
  redirect '/'
end

get '/posts/:post_id/edit' do |post_id|
  @post = Post.find(post_id)
  erb :edit
end

post '/posts/:post_id/edit' do |post_id|
  Post.update(post_id,params[:form])
  redirect "/"
end
