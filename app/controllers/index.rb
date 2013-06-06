
get '/' do
  @notes = Note.order("created_at ASC")
  erb :index
end

get '/notes/new' do
  erb :create
end

post '/notes/new' do 
  post = Note.create(params[:form])
  redirect "/"
end

delete '/notes/:note_id' do |note_id|
  Note.destroy(note_id)
  redirect '/'
end

get '/notes/:note_id/edit' do |note_id|
  @note = Note.find(note_id)
  erb :edit
end

post '/notes/:note_id/edit' do |note_id|
  Note.update(note_id,params[:form])
  redirect "/"
end
