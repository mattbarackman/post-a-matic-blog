get '/posts' do
  redirect '/'
end

get '/posts/new' do
  @errors = session.delete(:errors)
  erb :create
end

post '/posts/new' do
  tag_names = params[:form][:tags].split(",").map{|tag| tag.strip}.uniq
  tags = tag_names.map {|tag| Tag.find_or_create_by_name(tag)}
  params[:form][:tags] = tags 
  post = Post.create(params[:form])
  @errors = post.errors.messages
  if @errors.nil? || @errors.empty?
    p "bogus"  
    @errors = nil
    redirect "/"
  else 
    session[:errors] = post.errors.messages
    redirect '/posts/new'
  end
end

get '/posts/:post_id' do |post_id|
  @post = Post.find(post_id)
  erb :post
end

delete '/posts/:post_id' do |post_id|
  Post.destroy(post_id)
  redirect '/'
end

get '/posts/:post_id/edit' do |post_id|
  @errors = session.delete(:errors)
  @post = Post.find(post_id)
  erb :edit
end

post '/posts/:post_id/edit' do |post_id|
  tag_names = params[:form][:tags].split(",").map{|tag| tag.strip}.uniq
  tags = tag_names.map {|tag| Tag.find_or_create_by_name(tag)}
  params[:form][:tags] = tags
  post = Post.update(post_id,params[:form])
  @errors = post.errors.messages
  if @errors.nil? || @errors.empty? 
    p @errors 
    @errors = nil
    redirect "/posts/#{post_id}"
  else 
    session[:errors] = post.errors.messages
    redirect "/posts/#{post_id}/edit"
  end
end

