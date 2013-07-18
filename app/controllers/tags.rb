get '/tag/:title' do
  @tag = Tag.find_by_title(params[:title])
  erb :tag
end

post '/tag/:post_id' do
  @post = Post.find(params[:post_id])
  @tag
end
