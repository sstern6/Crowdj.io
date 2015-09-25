# login

get '/login' do

  erb :'/login/index'
end


post '/login' do


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

  if @new_user.save
    session[:user_id] = @new_user.id
    redirect "/users/#{@new_user.id}"
  else
    p @signup_errors = @new_user.errors.full_messages
  end

end

