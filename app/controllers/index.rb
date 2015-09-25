get '/' do

  erb :index
end

get '/soundcloud' do

    # p "********************* TRACK *************************"
    @tracks = client.get('/tracks', :q => "#{params[:song]}")
    # @group = client.get('/groups')
    # p "********************* STREAM_URL *************************"

    # p @group


    erb :tracks
end
