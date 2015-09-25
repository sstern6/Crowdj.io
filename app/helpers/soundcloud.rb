helpers do

    def client
      client = Soundcloud.new(
        :client_id => ENV["CLIENT_ID"],
        :client_secret => ENV["CLIENT_SECRET"],
        :redirect_uri => ENV["REDIRECT_URI"])
    end

end