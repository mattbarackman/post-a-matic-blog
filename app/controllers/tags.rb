get '/tags' do
  erb :tags
end

# get '/tags/new' do
#   erb :create
# end

post '/tags/new' do 
  post = Tag.create(params[:form])
  redirect "/"
end

get '/tags/:tag_name' do |tag_name|
  @tag = Tag.find_by_name(tag_name)
  erb :tag_posts
end

# delete '/tags/:tag_id' do |tag_id|
#   Tag.destroy(tag_id)
#   redirect '/'
# end

# get '/tags/:tag_id/edit' do |tag_id|
#   @post = Tag.find(tag_id)
#   erb :edit
# end

# post '/tags/:tag_id/edit' do |tag_id|
#   Tag.update(tag_id,params[:form])
#   redirect "/tags/#{tag_id}"
# end