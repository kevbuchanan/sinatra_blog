helpers do
  def previous?
    @page - 1 >= 0
  end

  def next?
    @page + 1 < Post.count/10.0
  end

  def pages
    (Post.count/10.0).ceil
  end
end
