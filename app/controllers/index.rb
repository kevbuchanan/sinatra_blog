get '/' do
  @posts = Post.limit(10)
  @page = 0
  erb :index
end

get '/page/:start' do
  start = params[:start].to_i
  @posts = Post.limit(10).offset(start * 10)
  @page = start
  erb :index
end
