get '/post/new' do
  erb :new_post
end

get '/post/edit/:id' do
  @post = Post.find(params[:id])
  erb :edit_post
end

get '/post/:id' do
  @post = Post.find(params[:id])
  erb :post
end

post '/post/create' do
  params[:post][:tags] = params[:post][:tags].split(', ').map do |name|
    Tag.find_or_create_by_title(name)
  end
  @post = Post.create(params[:post])
  if @post.valid?
    redirect to("/post/#{@post.id}")
  else
    erb :new_post
  end
end

post '/post/edit/:id' do
  params[:post][:tags] = params[:post][:tags].split(', ').map do |name|
    Tag.find_or_create_by_title(name)
  end
  @post = Post.find(params[:id])
  @post.update_attributes(params[:post])
  redirect to("/post/#{@post.id}")
end

post '/post/delete/:id' do
  @post = Post.find(params[:id])
  @post.destroy
  redirect to('/')
end

