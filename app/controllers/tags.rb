get '/tag/:id' do
  @tag = Tag.find(params[:id])
end

post '/tag/:post_id' do
  @post = Post.find(params[:post_id])
  @tag
end
