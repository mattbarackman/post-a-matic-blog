
get '/' do
  @notes = Note.order("created_at ASC")
  erb :index
end

get '/create' do
  erb :create
end

post '/create' do 
  post = Note.create(params[:form])
  redirect "/"
end

delete '/:note_id' do |note_id|
  Note.destroy(note_id)
  redirect '/'
end

get '/edit/:note_id' do |note_id|
  @note = Note.find(note_id)
  erb :edit
end

post '/edit/:note_id' do |note_id|
  Note.update(note_id,params[:form])
  redirect "/"
end
