# login

get '/login' do

  erb :'/login/index'
end


post '/login' do

  @user = User.find_by(:username => params[:username])
  if User.authenticate(params[:username],params[:password])
    session[:user_id] = @user.id
    redirect "/users/#{@user.id}"
  else
    # @login_errors = @user.errors.full_messages
    # erb :'/login'
    redirect '/login'
  end

end

# logout

get '/logout' do
  session[:user_id] = nil

  redirect '/'
end

# sign up

get '/signup' do

  erb :'/signup/index'
end

post '/users/new' do

  @new_user = User.new(params[:user])
  p @new_user.id

  if @new_user.save
    session[:user_id] = @new_user.id
    redirect "/users/#{@new_user.id}"
  else
    @signup_errors = @new_user.errors.full_messages
    erb :'/signup/index'
  end

end

