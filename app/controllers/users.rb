get '/users/:id' do

  @user = User.find(params[:id])

  erb :'/tracks/search'
end