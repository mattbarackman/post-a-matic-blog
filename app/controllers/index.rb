get '/' do
  # Look in app/views/index.erb
  erb :index
end

get '/create' do
  erb :create
end

post '/create' do 
  redirect "/#{post.id}"
end

get '/:post_id' do |post_id|
  erb :post
end

delete '/:post_id' do |post_id|
  redirect '/'
end

get '/edit/:post_id' do |post_id|
  erb :edit
end

post '/edit/:post_id' do |post_id|
  redirect "/#{post.id}"
end
