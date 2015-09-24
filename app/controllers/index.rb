get '/' do

  erb :index
end

get '/soundcloud' do

    # @tracks = client.get('/tracks', :limit => 10, :order => 'hotness')
    p "********************* TRACK *************************"
    p @track = client.get('/tracks/293',:url => 'http://soundcloud.com/forss/flickermood',:client_id => 'e463348f5dce90fed78b9bc77460209e')
    p "********************* STREAM_URL *************************"
    # p @track.stream_url
    # p stream_url = client.get('/tracks/293',:allow_redirects => true)
    # p stream_url.location

    erb :tracks
end
