get '/songs' do
    page_size = 40

    @tracks = client.get('/tracks', :q => "#{params[:song]}", :limit => page_size)


    @tracks.each do |track|

      # p track

      p track.stream_url


    end

    
    

    erb :"/tracks/index"
end