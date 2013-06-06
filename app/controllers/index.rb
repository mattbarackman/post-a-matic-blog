get '/' do
  # Look in app/views/index.erb
  erb :index
end

get '/create' do
end

post '/create' do 
end

get '/:post_id' do |post_id|
end

delete '/:post_id' do |post_id|
end

get '/edit/:post_id' do |post_id|
end

post '/edit/:post_id' do |post_id|
end
