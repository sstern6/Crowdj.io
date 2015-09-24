helpers do

    def client
      client = Soundcloud.new(:client_id => ENV[CLIENT_ID])
      client
    end

end