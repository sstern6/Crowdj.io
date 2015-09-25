get '/' do

  erb :index
end

get '/songs' do

    page_size = 10

    @tracks = client.get('/tracks', :q => "#{params[:song]}", :limit => page_size, :order => 'created_at')

    erb :tracks
end
