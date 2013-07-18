get '/users/:id/posts' do
  @user = User.find(params[:id])
  erb :user
end

post '/users/create' do
  @user = User.new(params[:user])
  if @user.valid?
    @user.save
    session[:user_id] = @user.id
    redirect to('/')
  else
    erb :sign_in
  end
end

